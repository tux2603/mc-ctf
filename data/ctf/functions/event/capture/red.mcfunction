say "The red flag has been captured!"
scoreboard players set @e[scores={CallStack00=1}] HasRedFlag 0
scoreboard players add @e[scores={CallStack00=1}] FlagsCaptured 1

replaceitem entity @e[scores={CallStack00=1}] armor.head minecraft:air

# Respawn the flag
execute at @e[name="RedBase"] run setblock ~ ~1 ~ minecraft:red_banner{Patterns:[{Pattern:rd,Color:6},{Pattern:sc,Color:0}]}
scoreboard players set @e[name="RedBase"] FlagPresent 1
scoreboard players set @e[name="RedMobile"] FlagPresent 0
