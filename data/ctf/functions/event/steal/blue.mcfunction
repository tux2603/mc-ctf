say "The blue flag has been stolen!"
scoreboard players add @e[scores={CallStack00=1}] FlagsStolen 1

replaceitem entity @e[scores={CallStack00=1}] armor.head minecraft:blue_banner{Patterns:[{Pattern:rd,Color:3},{Pattern:sc,Color:0}]}

# The player gets the flag and the base loses the flag
scoreboard players set @e[scores={CallStack00=1}] HasBlueFlag 1
execute at @e[name="BlueBase",scores={FlagPresent=1}] run setblock ~ ~1 ~ minecraft:air replace
execute at @e[name="BlueMobile",scores={FlagPresent=1}] run setblock ~ ~ ~ minecraft:air replace

scoreboard players set @e[name="BlueBase",scores={FlagPresent=1}] FlagPresent 0
scoreboard players set @e[name="BlueMobile",scores={FlagPresent=1}] FlagPresent 0