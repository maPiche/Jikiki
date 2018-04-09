select sqrt(
  power(abs((select coordx from villages where name='Minas Tirith')-(select coordx from villages where name='Edoras')),2)+
   power(abs((select coordy from villages where name='Minas Tirith')-(select coordy from villages where name='Edoras')),2)
) as  "distance entre Edoras et Minas Tirith";