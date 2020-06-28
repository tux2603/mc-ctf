say "The red flag has been captured!"
scoreboard players set @s HasRedFlag 0
scoreboard players add @s FlagsCaptured 1

replaceitem entity @s armor.head minecraft:air

# Respawn the flag
execute as @e[name="RedBase"] at @s run setblock ~ ~1 ~ minecraft:red_banner{Patterns:[{Pattern:rd,Color:6},{Pattern:sc,Color:0}]}
scoreboard players set @e[name="RedBase"] FlagPresent 1
scoreboard players set @e[name="RedMobile"] FlagPresent 0
