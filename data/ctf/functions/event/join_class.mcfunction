clear @a[tag=JoinNew]
effect clear @a[tag=JoinNew]
replaceitem entity @a[team=cola,tag=JoinNew] armor.chest minecraft:leather_chestplate{Enchantments:[{id:unbreaking,lvl:1000},{id:binding_curse,lvl:1}],display:{color:16711680}}
replaceitem entity @a[team=cecs,tag=JoinNew] armor.chest minecraft:leather_chestplate{Enchantments:[{id:unbreaking,lvl:1000},{id:binding_curse,lvl:1}],display:{color:255}}

tag @a[tag=JoinNew] remove Scout
tag @a[tag=JoinNew] remove Normie
tag @a[tag=JoinNew] remove Tank
tag @a[tag=JoinNew] remove Medic
tag @a[tag=JoinNew] remove Mage

loot give @a[tag=JoinNormie,tag=JoinNew] loot ctf:classes/normie 
tag @a[tag=JoinNormie,tag=JoinNew] add Normie
tag @a[tag=JoinNormie,tag=JoinNew] remove JoinNormie


loot give @a[tag=JoinScout,tag=JoinNew] loot ctf:classes/scout 
tag @a[tag=JoinScout,tag=JoinNew] add Scout
tag @a[tag=JoinScout,tag=JoinNew] remove JoinScout


loot give @a[tag=JoinTank,tag=JoinNew] loot ctf:classes/tank
tag @a[tag=JoinTank,tag=JoinNew] add Tank
tag @a[tag=JoinTank,tag=JoinNew] remove JoinTank


loot give @a[tag=JoinTank,tag=JoinNew] loot ctf:classes/tank
tag @a[tag=JoinTank,tag=JoinNew] add Tank
tag @a[tag=JoinTank,tag=JoinNew] remove JoinTank

loot give @a[tag=JoinMedic,tag=JoinNew] loot ctf:classes/medic
tag @a[tag=JoinMedic,tag=JoinNew] add Medic
tag @a[tag=JoinMedic,tag=JoinNew] remove JoinMedic


tag @a[tag=JoinNew] remove JoinNew