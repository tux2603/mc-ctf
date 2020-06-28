say "The blue flag has been captured"
scoreboard players set @e[scores={CallStack00=1}] HasBlueFlag 0
scoreboard players add @e[scores={CallStack00=1}] FlagsCaptured 1

replaceitem entity @e[scores={CallStack00=1}] armor.head minecraft:air

# Respawn the flag
execute at @e[name="BlueBase"] run setblock ~ ~1 ~ minecraft:blue_banner{Patterns:[{Pattern:rd,Color:3},{Pattern:sc,Color:0}]}
scoreboard players set @e[name="BlueBase"] FlagPresent 1
scoreboard players set @e[name="BlueMobile"] FlagPresent 0
