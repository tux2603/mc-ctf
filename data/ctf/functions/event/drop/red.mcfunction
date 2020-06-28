say "The red flag has been dropped"
scoreboard players add @s FlagsDropped 1

replaceitem entity @s armor.head minecraft:air

execute as @e[name="RedMobile"] at @s run setblock ~ ~ ~ minecraft:red_banner{Patterns:[{Pattern:rd,Color:6},{Pattern:sc,Color:0}]}
scoreboard players set @e[name="RedMobile"] FlagPresent 1
scoreboard players set @e[scores={HasRedFlag=1,IsDead=1}] HasRedFlag 0
