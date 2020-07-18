tellraw @a [{"color": "green", "text": "The red flag has been captured by "}, {"selector": "@e[scores={CallStack00=1}]", "color": "blue"}, {"color": "green", "text": "!"}]
scoreboard players set @e[scores={CallStack00=1}] HasRedFlag 0
scoreboard players add @e[scores={CallStack00=1}] FlagsCaptured 1
scoreboard players add BlueTeam TeamCaptured 1

replaceitem entity @e[scores={CallStack00=1}] armor.head minecraft:air

# Respawn the flag
execute at @e[name="RedBase"] run setblock ~ ~1 ~ minecraft:red_banner{Patterns:[{Color:6,Pattern:"lud"},{Color:0,Pattern:"sc"},{Color:11,Pattern:"mc"},{Color:5,Pattern:"glb"}]}
scoreboard players set @e[name="RedBase"] FlagPresent 1
scoreboard players set @e[name="RedMobile"] FlagPresent 0

execute as @a[team=cecs] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1023
execute as @a[team=cola] at @s run playsound minecraft:ambient.cave master @s ~ ~ ~ 1023