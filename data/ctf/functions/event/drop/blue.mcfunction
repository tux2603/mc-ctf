say "The blue flag has been dropped"
scoreboard players add @s FlagsDropped 1

replaceitem entity @s armor.head minecraft:air

execute as @e[name="BlueMobile"] at @s run setblock ~ ~ ~ minecraft:blue_banner{Patterns:[{Pattern:rd,Color:3},{Pattern:sc,Color:0}]}
scoreboard players set @e[name="BlueMobile"] FlagPresent 1
scoreboard players set @e[scores={HasBlueFlag=1,IsDead=1}] HasBlueFlag 0