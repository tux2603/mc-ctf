kill @e[name="RedBase"]
kill @e[name="RedMobile"]
summon minecraft:armor_stand ~ ~ ~ {CustomName:"\"RedBase\"",CustomNameVisible:0b,Marker:1b,NoGravity:1b,Invisible:1b}
summon minecraft:armor_stand ~ ~ ~ {CustomName:"\"RedMobile\"",CustomNameVisible:0b,Marker:1b,NoGravity:1b,Invisible:1b}
execute as @e[name="RedBase"] at @s run setblock ~ ~ ~ minecraft:red_wool
execute as @e[name="RedBase"] at @s run setblock ~ ~1 ~ minecraft:red_banner{Patterns:[{Pattern:rd,Color:6},{Pattern:sc,Color:0}]}
scoreboard players set @e[name="RedBase"] FlagPresent 1
scoreboard players set @e[name="RedMobile"] FlagPresent 0