# # Check to see if the blue flag has been stolen
# execute as @e[name="BlueBase",scores={FlagPresent=1}] at @s unless block ~ ~1 ~ minecraft:blue_banner run function ctf:event/flag_stolen/blue
# execute as @e[name="BlueBase",scores={FlagPresent=1}] at @s unless block ~ ~1 ~ minecraft:blue_banner run scoreboard players set @e[name="BlueBase"] FlagPresent 0

# # Check to see if the flag has been returned
# execute as @e[name="BlueBase",scores={FlagPresent=0}] at @s if block ~ ~1 ~ minecraft:blue_banner run function ctf:event/flag_returned/blue
# execute as @e[name="BlueBase",scores={FlagPresent=0}] at @s if block ~ ~1 ~ minecraft:blue_banner run scoreboard players set @e[name="BlueBase"] FlagPresent 1

# A player steals a flag
execute at @e[name="BlueBase",scores={FlagPresent=1}] as @p[team=cola,distance=..3] run function ctf:event/steal/blue
execute at @e[name="BlueMobile",scores={FlagPresent=1}] as @p[team=cola,distance=..3] run function ctf:event/steal/blue

execute at @e[name="RedBase",scores={FlagPresent=1}] as @p[team=cecs,distance=..3] run function ctf:event/steal/red
execute at @e[name="RedMobile",scores={FlagPresent=1}] as @p[team=cecs,distance=..3] run function ctf:event/steal/red


# Have the mobile follow the player around
execute as @e[scores={HasBlueFlag=1,IsDead=0}] run tp @e[name="BlueMobile"] @s
execute as @e[scores={HasRedFlag=1,IsDead=0}] run tp @e[name="RedMobile"] @s

# If the player who had the flag died
execute as @e[scores={HasBlueFlag=1,IsDead=1}] run function ctf:event/drop/blue
execute as @e[scores={HasRedFlag=1,IsDead=1}] run function ctf:event/drop/red

# If a player recovers their team's flag
execute at @e[name="BlueMobile",scores={FlagPresent=1}] as @p[team=cecs,distance=..3] run function ctf:event/recover/blue
execute at @e[name="RedMobile",scores={FlagPresent=1}] as @p[team=cola,distance=..3] run function ctf:event/recover/red

# A player returns the team's flag
execute at @e[name="BlueBase",scores={FlagPresent=0}] as @p[team=cecs,distance=..3,scores={HasBlueFlag=1,IsDead=0}] run function ctf:event/return/blue
execute at @e[name="RedBase",scores={FlagPresent=0}] as @p[team=cola,distance=..3,scores={HasRedFlag=1,IsDead=0}] run function ctf:event/return/red

# If the player who has the flag fully captures it
execute at @e[name="RedBase"] as @p[team=cola,distance=..3,scores={HasBlueFlag=1,IsDead=0}] run function ctf:event/capture/blue
execute at @e[name="BlueBase"] as @p[team=cecs,distance=..3,scores={HasRedFlag=1,IsDead=0}] run function ctf:event/capture/red


# Update deaths
scoreboard players set @e[scores={DeathRegisterd=1}] IsDead 0
scoreboard players set @e[scores={DeathRegisterd=1}] DeathRegisterd 0

scoreboard players set @e[scores={IsDead=1}] DeathRegisterd 1