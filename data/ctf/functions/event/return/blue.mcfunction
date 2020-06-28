say "The blue flag has been returned!"
scoreboard players set @s HasBlueFlag 0
scoreboard players add @s FlagsReturned 1

replaceitem entity @s armor.head minecraft:air

# Respawn the flag
execute as @e[name="BlueBase"] at @s run setblock ~ ~1 ~ minecraft:blue_banner{Patterns:[{Pattern:rd,Color:3},{Pattern:sc,Color:0}]}
scoreboard players set @e[name="BlueBase"] FlagPresent 1
scoreboard players set @e[name="BlueMobile"] FlagPresent 0