tellraw @a [{"color": "green", "text": "The blue flag has been captured by "}, {"selector": "@e[scores={CallStack00=1}]", "color": "red"}, {"color": "green", "text": "!"}]
scoreboard players set @e[scores={CallStack00=1}] HasBlueFlag 0
scoreboard players add @e[scores={CallStack00=1}] FlagsCaptured 1
scoreboard players add RedTeam TeamCaptured 1

replaceitem entity @e[scores={CallStack00=1}] armor.head minecraft:air

# Respawn the flag
execute at @e[name="BlueBase"] run setblock ~ ~1 ~ minecraft:light_blue_banner{Patterns:[{Color:11,Pattern:"bo"},{Color:11,Pattern:"cbo"},{Color:11,Pattern:"mr"},{Color:8,Pattern:"mc"},{Color:0,Pattern:"flo"}]}
scoreboard players set @e[name="BlueBase"] FlagPresent 1
scoreboard players set @e[name="BlueMobile"] FlagPresent 0

execute as @a[team=cola] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1023
execute as @a[team=cecs] at @s run playsound minecraft:ambient.cave master @s ~ ~ ~ 1023