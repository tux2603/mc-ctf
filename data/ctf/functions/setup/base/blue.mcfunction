kill @e[name="BlueBase"]
kill @e[name="BlueMobile"]
summon minecraft:armor_stand ~ ~ ~ {CustomName:"\"BlueBase\""}
summon minecraft:armor_stand ~ ~ ~ {CustomName:"\"BlueMobile\""}
execute as @e[name="BlueBase"] at @s run setblock ~ ~ ~ minecraft:blue_wool
execute as @e[name="BlueBase"] at @s run setblock ~ ~1 ~ minecraft:blue_banner{Patterns:[{Pattern:rd,Color:3},{Pattern:sc,Color:0}]}
scoreboard players set @e[name="BlueBase"] FlagPresent 1
scoreboard players set @e[name="BlueMobile"] FlagPresent 0