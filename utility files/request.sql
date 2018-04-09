--le nom, le type, le materiel et le prix et la quantite de toutes les armures de plate en vente a stormwind

select name, type, material, unitprice,quantity from(
	select armors.id,name,type, material from
	(select items.id from offers, items,clients
		where offers.itemid=items.id and
		offers.clientid=clients.id and
		clients.village='Stormwind' and offers.available=TRUE) as r1, armors
	where armors.id=r1.id and material='Plate'
)as r2, offers where offers.itemid=r2.id


--tous les items en vente a Edoras
select items.name, unitprice, village from offers, items, clients 
where offers.itemid=items.id 
and offers.clientid=clients.id 
and village='Edoras'


--le nom, leffet, le prix et la quantity de toutes les potions de healing en vente a Theramore
select name,effect, unitprice,quantity from(
	select potions.id,name,effect from
	(select items.id from offers, items,clients
		where offers.itemid=items.id and
		offers.clientid=clients.id and
		clients.village='Theramore' and offers.available=TRUE) as r1, potions
	where potions.id=r1.id and effect='Healing'
)as r2, offers where offers.itemid=r2.id 


--tous les chest armor en vente, avec la ville de vente
select armors.name,material, type, unitprice,village
from offers,armors,clients
where offers.itemid=armors.id and offers.clientid=clients.id and type='Chest'
ORDER BY unitprice


--armure de head la moins chere
select armors.name,armors.type,offers.unitprice,clients.village 
from clients, offers, armors 
where offers.clientid=clients.id and offers.itemid=armors.id
and offers.id=
(select max(id) from offers where unitprice=(select min(unitprice)
from armors,offers where armors.id=offers.itemid and type='Head'))