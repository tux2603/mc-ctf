say "The blue flag has been recovered!"
scoreboard players add @s FlagsRecovered 1

replaceitem entity @s armor.head minecraft:blue_banner{Patterns:[{Pattern:rd,Color:3},{Pattern:sc,Color:0}]}

# The player gets the flag and the base loses the flag
scoreboard players set @s HasBlueFlag 1
execute as @e[name="BlueBase",scores={FlagPresent=1}] at @s run setblock ~ ~1 ~ minecraft:air replace
execute as @e[name="BlueMobile",scores={FlagPresent=1}] at @s run setblock ~ ~ ~ minecraft:air replace

execute as @e[name="BlueBase",scores={FlagPresent=1}] run scoreboard players set @s FlagPresent 0
execute as @e[name="BlueMobile",scores={FlagPresent=1}] run scoreboard players set @s FlagPresent 0