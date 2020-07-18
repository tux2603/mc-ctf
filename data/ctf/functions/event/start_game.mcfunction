function ctf:setup/objectives
function ctf:setup/teams

difficulty hard
gamerule keepInventory true

kill @a[team=cecs]
kill @a[team=cola]
clear @a
gamemode adventure @a
effect clear @a

replaceitem entity @a[team=cola] armor.chest minecraft:leather_chestplate{Enchantments:[{id:unbreaking,lvl:1000},{id:binding_curse,lvl:1}],display:{color:16711680}}
replaceitem entity @a[team=cecs] armor.chest minecraft:leather_chestplate{Enchantments:[{id:unbreaking,lvl:1000},{id:binding_curse,lvl:1}],display:{color:255}}
loot give @a loot ctf:classes/normie

# Bring the flags back to base
execute at @e[name="BlueBase"] run setblock ~ ~1 ~ minecraft:light_blue_banner{Patterns:[{Color:11,Pattern:"bo"},{Color:11,Pattern:"cbo"},{Color:11,Pattern:"mr"},{Color:8,Pattern:"mc"},{Color:0,Pattern:"flo"}]}
execute at @e[name="BlueBase"] run tp @e[name="BlueMobile"] ~ ~ ~
execute at @e[name="BlueBase"] run spawnpoint @a[team=cecs] ~ ~1 ~

execute at @e[name="RedBase"] run setblock ~ ~1 ~ minecraft:red_banner{Patterns:[{Color:6,Pattern:"tt"},{Color:6,Pattern:"bt"},{Color:14,Pattern:"mr"},{Color:0,Pattern:"sc"},{Color:11,Pattern:"mc"},{Color:5,Pattern:"glb"}]}
execute at @e[name="RedBase"] run tp @e[name="RedMobile"] ~ ~ ~
execute at @e[name="RedBase"] run spawnpoint @a[team=cola] ~ ~1 ~

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
scoreboard players set @e PearlCooldown -1

scoreboard players set BlueTeam TeamCaptured 0
scoreboard players set RedTeam TeamCaptured 0
scoreboard players set BlueTeam TeamStolen 0
scoreboard players set RedTeam TeamStolen 0
scoreboard players set BlueTeam TeamRecovered 0
scoreboard players set RedTeam TeamRecovered 0
scoreboard players set BlueTeam TeamDropped 0
scoreboard players set RedTeam TeamDropped 0

scoreboard objectives setdisplay sidebar TeamCaptured
scoreboard objectives setdisplay list FlagsCaptured