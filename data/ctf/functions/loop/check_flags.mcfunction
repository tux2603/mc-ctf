# Check to see if the blue flag has been stolen
execute as @e[name="BlueBase",scores={FlagPresent=1}] at @s unless block ~ ~1 ~ minecraft:blue_banner run function ctf:event/flag_stolen/blue
execute as @e[name="BlueBase",scores={FlagPresent=1}] at @s unless block ~ ~1 ~ minecraft:blue_banner run scoreboard players set @e[name="BlueBase"] FlagPresent 0

# Check to see if the flag has been returned
execute as @e[name="BlueBase",scores={FlagPresent=0}] at @s if block ~ ~1 ~ minecraft:blue_banner run function ctf:event/flag_returned/blue
execute as @e[name="BlueBase",scores={FlagPresent=0}] at @s if block ~ ~1 ~ minecraft:blue_banner run scoreboard players set @e[name="BlueBase"] FlagPresent 1

# Check to see if the blue flag has been stolen
execute as @e[name="RedBase",scores={FlagPresent=1}] at @s unless block ~ ~1 ~ minecraft:red_banner run function ctf:event/flag_stolen/red
execute as @e[name="RedBase",scores={FlagPresent=1}] at @s unless block ~ ~1 ~ minecraft:red_banner run scoreboard players set @e[name="RedBase"] FlagPresent 0

# Check to see if the flag has been returned
execute as @e[name="RedBase",scores={FlagPresent=0}] at @s if block ~ ~1 ~ minecraft:red_banner run function ctf:event/flag_returned/red
execute as @e[name="RedBase",scores={FlagPresent=0}] at @s if block ~ ~1 ~ minecraft:red_banner run scoreboard players set @e[name="RedBase"] FlagPresent 1