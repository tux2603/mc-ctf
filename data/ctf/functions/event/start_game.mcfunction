function ctf:setup/objectives
function ctf:setup/teams

difficulty peaceful
gamerule keepInventory true

kill @a[team=cecs]
kill @a[team=cola]
clear @a
gamemode adventure @a

replaceitem entity @a armor.chest minecraft:iron_chestplate
replaceitem entity @a armor.legs minecraft:iron_leggings
replaceitem entity @a armor.feet minecraft:iron_boots

give @a minecraft:bread 128
give @a minecraft:iron_sword
give @a bow{Enchantments:[{id:infinity,lvl:1}]}
give @a minecraft:arrow 1

# Bring the flags back to base
execute at @e[name="BlueBase"] run setblock ~ ~1 ~ minecraft:blue_banner{Patterns:[{Pattern:rd,Color:3},{Pattern:sc,Color:0}]}
execute at @e[name="BlueMobile"] run setblock ~ ~ ~ minecraft:air
execute at @e[name="BlueBase"] run tp @e[name="BlueMobile"] ~ ~ ~

execute at @e[name="RedBase"] run setblock ~ ~1 ~ minecraft:red_banner{Patterns:[{Pattern:rd,Color:6},{Pattern:sc,Color:0}]}
execute at @e[name="RedMobile"] run setblock ~ ~ ~ minecraft:air
execute at @e[name="RedBase"] run tp @e[name="RedMobile"] ~ ~ ~

# Reset scores
scoreboard players set @e[name="BlueBase"] FlagPresent 1
scoreboard players set @e[name="BlueMobile"] FlagPresent 0

scoreboard players set @e[name="RedBase"] FlagPresent 1
scoreboard players set @e[name="RedMobile"] FlagPresent 0

scoreboard players set @a IsDead 0
scoreboard players set @a DeathRegisterd 0
scoreboard players set @a HasBlueFlag 0
scoreboard players set @a HasRedFlag 0
scoreboard players set @a FlagsCaptured 0
scoreboard players set @a FlagsStolen 0
scoreboard players set @a FlagsRecovered 0
scoreboard players set @a FlagsReturned 0
scoreboard players set @a FlagsDropped 0
scoreboard players set @e CallStack00 0