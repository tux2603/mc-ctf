# A player steals a flag
execute at @e[name="BlueBase",scores={FlagPresent=1}] if entity @p[team=cola,distance=..3] run scoreboard players set @p[team=cola,distance=..3] CallStack00 1
execute if entity @e[scores={CallStack00=1}] run function ctf:event/steal/blue
scoreboard players set @a CallStack00 0

execute at @e[name="BlueMobile",scores={FlagPresent=1}] if entity @p[team=cola,distance=..3] run scoreboard players set @p[team=cola,distance=..3] CallStack00 1
execute if entity @e[scores={CallStack00=1}] run function ctf:event/steal/blue
scoreboard players set @a CallStack00 0

execute at @e[name="RedBase",scores={FlagPresent=1}] if entity @p[team=cecs,distance=..3] run scoreboard players set @p[team=cecs,distance=..3] CallStack00 1
execute if entity @e[scores={CallStack00=1}] run function ctf:event/steal/red
scoreboard players set @a CallStack00 0

execute at @e[name="RedMobile",scores={FlagPresent=1}] if entity @p[team=cecs,distance=..3] run scoreboard players set @p[team=cecs,distance=..3] CallStack00 1
execute if entity @e[scores={CallStack00=1}] run function ctf:event/steal/red
scoreboard players set @a CallStack00 0



# Have the mobile follow the player around
execute at @e[scores={HasBlueFlag=1,IsDead=0}] if entity @e[scores={HasBlueFlag=1,IsDead=0}] run tp @e[name="BlueMobile"] ~ ~ ~
execute at @e[scores={HasRedFlag=1,IsDead=0}] if entity @e[scores={HasRedFlag=1,IsDead=0}] run tp @e[name="RedMobile"] ~ ~ ~



# If the player who had the flag died
execute if entity @e[scores={HasBlueFlag=1,IsDead=1}] run scoreboard players set @e[scores={HasBlueFlag=1,IsDead=1}] CallStack00 1
execute if entity @e[scores={CallStack00=1}] run function ctf:event/drop/blue
scoreboard players set @a CallStack00 0

execute if entity @e[scores={HasRedFlag=1,IsDead=1}] run scoreboard players set @e[scores={HasRedFlag=1,IsDead=1}] CallStack00 1
execute if entity @e[scores={CallStack00=1}] run function ctf:event/drop/red
scoreboard players set @a CallStack00 0



# If a player recovers their team's flag
execute at @e[name="BlueMobile",scores={FlagPresent=1}] if entity @p[team=cecs,distance=..3] run scoreboard players set @p[team=cecs,distance=..3] CallStack00 1
execute if entity @e[scores={CallStack00=1}] run function ctf:event/return/blue
scoreboard players set @a CallStack00 0

execute at @e[name="RedMobile",scores={FlagPresent=1}] if entity @p[team=cola,distance=..3] run scoreboard players set @p[team=cola,distance=..3] CallStack00 1
execute if entity @e[scores={CallStack00=1}] run function ctf:event/return/red
scoreboard players set @a CallStack00 0



# # If the player who has the flag fully captures it
execute at @e[name="RedBase"] if entity @p[team=cola,distance=..3,scores={HasBlueFlag=1,IsDead=0}] run scoreboard players set @p[team=cola,distance=..3,scores={HasBlueFlag=1,IsDead=0}] CallStack00 1
execute if entity @e[scores={CallStack00=1}] run function ctf:event/capture/blue
scoreboard players set @a CallStack00 0

execute at @e[name="BlueBase"] if entity @p[team=cecs,distance=..3,scores={HasRedFlag=1,IsDead=0}] run scoreboard players set @p[team=cecs,distance=..3,scores={HasRedFlag=1,IsDead=0}] CallStack00 1
execute if entity @e[scores={CallStack00=1}] run function ctf:event/capture/red
scoreboard players set @a CallStack00 0



# Update deaths
scoreboard players set @e[scores={DeathRegisterd=1}] IsDead 0

clear @a[scores={DeathRegisterd=1}]

replaceitem entity @a[scores={DeathRegisterd=1},team=cola] armor.chest minecraft:leather_chestplate{Enchantments:[{id:unbreaking,lvl:1000}],display:{color:16711680}}
replaceitem entity @a[scores={DeathRegisterd=1},team=cecs] armor.chest minecraft:leather_chestplate{Enchantments:[{id:unbreaking,lvl:1000}],display:{color:255}}
replaceitem entity @a[scores={DeathRegisterd=1}] armor.legs minecraft:iron_leggings{Enchantments:[{id:unbreaking,lvl:1000}]}
replaceitem entity @a[scores={DeathRegisterd=1}] armor.feet minecraft:iron_boots{Enchantments:[{id:unbreaking,lvl:1000}]}

give @a[scores={DeathRegisterd=1}] minecraft:iron_sword{Enchantments:[{id:unbreaking,lvl:1000}]}
give @a[scores={DeathRegisterd=1}] minecraft:bow{Enchantments:[{id:infinity,lvl:1},{id:unbreaking,lvl:1000},{id:power,lvl:1}]}
give @a[scores={DeathRegisterd=1}] minecraft:ender_pearl 2
give @a[scores={DeathRegisterd=1}] minecraft:arrow 1
give @a[scores={DeathRegisterd=1}] minecraft:tipped_arrow{CustomPotionEffects:[{Id:2,Amplifier:5,Duration:4800,ShowParticles:0b}],CustomPotionColor:5878,display:{Name:"\"Makem Slow\""}}

scoreboard players set @e[scores={DeathRegisterd=1}] DeathRegisterd 0
scoreboard players set @e[scores={IsDead=1..100}] DeathRegisterd 1

weather clear

effect give @a minecraft:speed 100000 2 true
