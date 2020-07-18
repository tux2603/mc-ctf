tag @a[tag=JoinMage] add JoinNew
tag @a[tag=JoinMedic] add JoinNew
tag @a[tag=JoinNormie] add JoinNew
tag @a[tag=JoinScout] add JoinNew
tag @a[tag=JoinTank] add JoinNew
tag @a[tag=JoinSpy] add JoinNew


clear @a[tag=JoinNew]
effect clear @a[tag=JoinNew]
replaceitem entity @a[team=cola,tag=JoinNew,tag=!JoinSpy] armor.chest minecraft:leather_chestplate{Enchantments:[{id:unbreaking,lvl:1000},{id:binding_curse,lvl:1}],display:{color:16711680}}
replaceitem entity @a[team=cecs,tag=JoinNew,tag=!JoinSpy] armor.chest minecraft:leather_chestplate{Enchantments:[{id:unbreaking,lvl:1000},{id:binding_curse,lvl:1}],display:{color:255}}

tag @a[tag=JoinNew] remove Scout
tag @a[tag=JoinNew] remove Normie
tag @a[tag=JoinNew] remove Tank
tag @a[tag=JoinNew] remove Medic
tag @a[tag=JoinNew] remove Mage
tag @a[tag=JoinNew] remove Spy

loot give @a[tag=JoinNormie] loot ctf:classes/normie 
tag @a[tag=JoinNormie] add Normie
tag @a[tag=JoinNormie] remove JoinNormie


loot give @a[tag=JoinScout] loot ctf:classes/scout 
tag @a[tag=JoinScout] add Scout
tag @a[tag=JoinScout] remove JoinScout


loot give @a[tag=JoinTank] loot ctf:classes/tank
tag @a[tag=JoinTank] add Tank
tag @a[tag=JoinTank] remove JoinTank


loot give @a[tag=JoinTank] loot ctf:classes/tank
tag @a[tag=JoinTank] add Tank
tag @a[tag=JoinTank] remove JoinTank

loot give @a[tag=JoinMedic] loot ctf:classes/medic
tag @a[tag=JoinMedic] add Medic
tag @a[tag=JoinMedic] remove JoinMedic

loot give @a[tag=JoinMage] loot ctf:classes/mage
tag @a[tag=JoinMage] add Mage
tag @a[tag=JoinMage] remove JoinMage

loot give @a[tag=JoinSpy] loot ctf:classes/spy
tag @a[tag=JoinSpy] add Spy
tag @a[tag=JoinSpy] remove JoinSpy

tag @a[tag=JoinNew] remove JoinNew