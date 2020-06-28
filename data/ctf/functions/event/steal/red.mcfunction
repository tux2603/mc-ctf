say "The red flag has been stolen!"
scoreboard players add @e[scores={CallStack00=1}] FlagsStolen 1

replaceitem entity @e[scores={CallStack00=1}] armor.head minecraft:red_banner{Patterns:[{Pattern:rd,Color:6},{Pattern:sc,Color:0}]}

# The player gets the flag and the base loses the flag
scoreboard players set @e[scores={CallStack00=1}] HasRedFlag 1
execute at @e[name="RedBase",scores={FlagPresent=1}] run setblock ~ ~1 ~ minecraft:air replace
execute at @e[name="RedMobile",scores={FlagPresent=1}] run setblock ~ ~ ~ minecraft:air replace

scoreboard players set @e[name="RedBase",scores={FlagPresent=1}] FlagPresent 0
scoreboard players set @e[name="RedMobile",scores={FlagPresent=1}] FlagPresent 0