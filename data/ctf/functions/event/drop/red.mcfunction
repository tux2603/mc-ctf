say "The red flag has been dropped"
scoreboard players add @e[scores={CallStack00=1}] FlagsDropped 1

replaceitem entity @e[scores={CallStack00=1}] armor.head minecraft:air

execute at @e[name="RedMobile"] run setblock ~ ~ ~ minecraft:red_banner{Patterns:[{Pattern:rd,Color:6},{Pattern:sc,Color:0}]}
scoreboard players set @e[name="RedMobile"] FlagPresent 1
scoreboard players set @e[scores={HasRedFlag=1,IsDead=1}] HasRedFlag 0
