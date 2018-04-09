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



--mace la moins chere (marche avec les autres sortes de weapons aussi)
select offers.unitprice, weapons.name, weapons.material, clients.village 
from weapons, offers, clients
where offers.clientid=clients.id and offers.itemid=weapons.id 
and offers.unitprice = (select min(unitprice) from offers 
where unitprice=(select min(unitprice) from weapons,offers 
where weapons.id=offers.itemid and name='Mace'))

--armure la moins cher de type quon veut
select offers.unitprice, armors.type, armors.material, clients.village 
from armors, offers, clients
where offers.clientid=clients.id and offers.itemid=armors.id and armors.type = 'Chest'
and offers.unitprice = (select min(unitprice) from offers 
where unitprice=(select min(unitprice) from armors,offers 
where armors.id=offers.itemid and armors.type = 'Chest'))


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
where rn = 1
