say "The red flag has been recovered!"
scoreboard players add @s FlagsRecovered 1

replaceitem entity @s armor.head minecraft:red_banner{Patterns:[{Pattern:rd,Color:6},{Pattern:sc,Color:0}]}

# The player gets the flag and the base loses the flag
scoreboard players set @s HasRedFlag 1
execute as @e[name="RedBase",scores={FlagPresent=1}] at @s run setblock ~ ~1 ~ minecraft:air replace
execute as @e[name="RedMobile",scores={FlagPresent=1}] at @s run setblock ~ ~ ~ minecraft:air replace

execute as @e[name="RedBase",scores={FlagPresent=1}] run scoreboard players set @s FlagPresent 0
execute as @e[name="RedMobile",scores={FlagPresent=1}] run scoreboard players set @s FlagPresent 0