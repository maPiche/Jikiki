--le nom, le type, le materiel et le prix et la quantite de toutes les armures de plate en vente a stormwind
--pareil que les potions
select item_name, type, material, unitprice, quantity from (
	select armors.id, r1.item_name, type, material from
	(select items.item_id, items.item_name from offers, items, clients
		where offers.itemid=items.item_id and
		offers.clientid=clients.id and
		clients.village='Stormwind' and offers.available=TRUE) as r1, armors
	where armors.id=r1.item_id and material='Plate'
) as r2, offers where offers.itemid=r2.id


--tous les items en vente a Edoras
select items.item_name, unitprice, village from offers, items, clients
where offers.itemid=items.item_id
and offers.clientid=clients.id
and village='Edoras'

--le nom, leffet, le prix et la quantity de toutes les potions de healing en vente a Theramore
select item_name,effect, unitprice,quantity from(
	select potions.id, r1.item_name, effect from
	(select items.item_id, items.item_name from offers, items, clients
		where offers.itemid=items.item_id and
		offers.clientid=clients.id and
		clients.village='Theramore' and offers.available=TRUE) as r1, potions
	where potions.id=r1.item_id and effect='Healing'
)as r2, offers where offers.itemid=r2.id


--tous les chest armor en vente, avec la ville de vente
--pareil sinon moins bon que les armures les moins cheres.
select items.item_name, material, type, unitprice, village
from offers, armors, items, clients
where offers.itemid=armors.id and armors.id=items.item_id and offers.clientid=clients.id and type='Chest'
ORDER BY unitprice


--armure de head la moins chere
--idem que plus haut.
select items.name, armors.type, offers.unitprice, clients.village 
from clients, offers, items, armors 
where offers.clientid=clients.id and offers.itemid=armors.id and armors.id=items.id
and offers.id=
(select max(id) from offers where unitprice=(select min(unitprice)
from armors,offers where armors.id=offers.itemid and type='Head'))


--mace la moins chere (marche avec les autres sortes de weapons aussi)
With maceOffers as (select itemid, item_name, title, unitprice, clientid 
                    from offers, items
                    where items.item_id=offers.itemid and items.item_name='Mace' and available=TRUE)
select item_name as item, material, title as offer, unitprice, offersWithClients.name as seller, village, coordx, coordy
from villages, (select * 
      from clients, (select item_name, title, unitprice, clientid, material
               from weapons, (select * from maceOffers where unitprice = (select min(unitprice) from maceOffers)) cheapestOffers
               where weapons.id=cheapestOffers.itemid) offersWithMaterial
      where clients.id=clientid) offersWithClients
where villages.name=village


--Les informations (vendeur, son village, ses coordonnées, id de l'offre, nom de l'item) sur le offres 'out of stock' mais toujours disponibles
with offersOutOfStock as (select offerid, availableOffers.itemid, availableOffers.clientid
                       from buy, (select * from offers where available=TRUE) availableOffers
                       where buy.offerid = availableOffers.id
                       group by offerid, availableOffers.quantity, availableOffers.itemid, availableOffers.clientid
                       having sum(buy.quantity) = availableOffers.quantity)
select offerid, item_name as item, offersWithNameAndSeller.name as seller, village, coordx, coordy
from villages, (select * 
                from clients, (select offerid, item_name, clientid
                               from items, offersOutOfStock
                               where offersOutOfStock.itemid = items.item_id) offersWithName
                where clients.id = clientid) offersWithNameAndSeller
where villages.name = village


--armure la moins cher de type quon veut
select offers.unitprice, armors.type, armors.material, clients.village 
from armors, offers, clients
where offers.clientid=clients.id and offers.itemid=armors.id and armors.type = 'Chest'
and offers.unitprice = (select min(unitprice) from offers 
where unitprice=(select min(unitprice) from armors,offers 
where armors.id=offers.itemid and armors.type = 'Chest'))


--distance entre les villages




-- item(s) le(s) plus vendu(s) ainsi que les noms des vendeurs, leur village et les coordonnées de ces villages
with itemSells as 
(
    select sum(buy.quantity) as qte, itemid, avg(buy.price / buy.quantity) as avg_Buy_Price, avg(offers.unitprice) avg_Offer_Price 
    from buy, offers where buy.offerid=offers.id 
    group by (itemid)
)
select item_name as item, avg_Buy_Price, avg_Offer_Price, clientId as seller_id, clientBestSellers.name as seller, village, coordx, coordy 
from (select * 
        from (select item_name, clientId, bestSellers.itemid, avg_Buy_Price, avg_Offer_Price
                from (select item_name, itemid, avg_Buy_Price, avg_Offer_Price 
                      from items, (select * 
                                   from itemSells
                                   where itemSells.qte >= ALL (select itemSells.qte from itemSells)
                                  ) as bestSellers
                      where items.item_id=bestSellers.itemid) as bestSellers, offers
                where offers.itemid=bestSellers.itemid) as clientBestSellers, clients
        where clients.id=clientBestSellers.clientId) as clientBestSellers, villages
where villages.name=clientBestSellers.village



--avoir toutes les armures de chaque type les moins cheres
--https://stackoverflow.com/questions/5021693/distinct-for-only-one-column
select type, material, unitprice, village, coordx, coordy from(
	select armors.type as type, unitprice, armors.material as material, clients.village as village, 
		   villages.coordx as coordx, villages.coordy as coordy,
		   ROW_NUMBER() over(partition by armors.type
							   order by offers.unitprice ASC) as rn
	from armors, offers, clients, villages
	where offers.itemid = armors.id and offers.clientid = clients.id and villages.name = clients.village
) as a
where rn = 1 order by village
