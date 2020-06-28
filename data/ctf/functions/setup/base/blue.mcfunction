kill @e[name="BlueBase"]
kill @e[name="BlueMobile"]
summon minecraft:armor_stand ~ ~ ~ {CustomName:"\"BlueBase\"",CustomNameVisible:0b,Marker:1b,NoGravity:1b,Invisible:1b}
summon minecraft:armor_stand ~ ~ ~ {CustomName:"\"BlueMobile\"",CustomNameVisible:0b,Marker:1b,NoGravity:1b,Invisible:1b}
execute as @e[name="BlueBase"] at @s run setblock ~ ~ ~ minecraft:blue_wool
execute as @e[name="BlueBase"] at @s run setblock ~ ~1 ~ minecraft:blue_banner{Patterns:[{Pattern:rd,Color:3},{Pattern:sc,Color:0}]}
scoreboard players set @e[name="BlueBase"] FlagPresent 1
scoreboard players set @e[name="BlueMobile"] FlagPresent 0