--le nom, le type, le materiel et le prix et la quantite de toutes les armures de plate en vente a stormwind

select name, type, material, unitprice, quantity from (
	select armors.id, r1.name, type, material from
	(select items.id, items.name from offers, items, clients
		where offers.itemid=items.id and
		offers.clientid=clients.id and
		clients.village='Stormwind' and offers.isavailable=TRUE) as r1, armors
	where armors.id=r1.id and material='Plate'
) as r2, offers where offers.itemid=r2.id


--tous les items en vente a Edoras
select items.name, unitprice, village from offers, items, clients 
where offers.itemid=items.id 
and offers.clientid=clients.id 
and village='Edoras'


--le nom, leffet, le prix et la quantity de toutes les potions de healing en vente a Theramore
select name,effect, unitprice,quantity from(
	select potions.id, r1.name, effect from
	(select items.id, items.name from offers, items, clients
		where offers.itemid=items.id and
		offers.clientid=clients.id and
		clients.village='Theramore' and offers.isavailable=TRUE) as r1, potions
	where potions.id=r1.id and effect='Healing'
)as r2, offers where offers.itemid=r2.id 


--tous les chest armor en vente, avec la ville de vente
select items.name, material, type, unitprice, village
from offers, armors, items, clients
where offers.itemid=armors.id and armors.id=items.id and offers.clientid=clients.id and type='Chest'
ORDER BY unitprice


--armure de head la moins chere
select items.name, armors.type, offers.unitprice, clients.village 
from clients, offers, items, armors 
where offers.clientid=clients.id and offers.itemid=armors.id and armors.id=items.id
and offers.id=
(select max(id) from offers where unitprice=(select min(unitprice)
from armors,offers where armors.id=offers.itemid and type='Head'))


--mace la moins chere (marche avec les autres sortes de weapons aussi)
select offers.unitprice, items.name, weapons.material, clients.village 
from weapons, items, offers, clients
where offers.clientid=clients.id and offers.itemid=weapons.id and weapons.id=items.id
and offers.unitprice = (select min(unitprice) from offers 
where unitprice=(select min(unitprice) from weapons, items, offers 
where weapons.id=offers.itemid and items.name='Mace'))


--armure la moins cher de type quon veut
select offers.unitprice, armors.type, armors.material, clients.village 
from armors, offers, clients
where offers.clientid=clients.id and offers.itemid=armors.id and armors.type = 'Chest'
and offers.unitprice = (select min(unitprice) from offers 
where unitprice=(select min(unitprice) from armors,offers 
where armors.id=offers.itemid and armors.type = 'Chest'))



-- item(s) le(s) plus vendu(s) ainsi que les noms des vendeurs, leur village et les coordonnées de ces villages
with itemSells as 
(
    select sum(buy.quantity) as qte, itemid, avg(buy.price / buy.quantity) as avg_Buy_Price, avg(offers.unitprice) avg_Offer_Price 
    from buy, offers where buy.offerid=offers.id 
    group by (itemid)
)
select item_name, avg_Buy_Price, avg_Offer_Price, clientId as client_id, clientBestSellers.name as client_name, village as village_name, coordx as village_coord_x, coordy as village_coord_y 
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
