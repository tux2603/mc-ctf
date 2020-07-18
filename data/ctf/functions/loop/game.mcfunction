# A player steals a flag
execute at @e[name="BlueBase",scores={FlagPresent=1}] if entity @e[name="RedBase",scores={FlagPresent=1}] if entity @p[team=cola,distance=..3] run scoreboard players set @p[team=cola,distance=..3] CallStack00 1
execute if entity @e[scores={CallStack00=1}] run function ctf:event/steal/blue
scoreboard players set @a CallStack00 0

execute at @e[name="BlueMobile",scores={FlagPresent=1}] if entity @e[name="RedBase",scores={FlagPresent=1}] if entity @p[team=cola,distance=..3] run scoreboard players set @p[team=cola,distance=..3] CallStack00 1
execute if entity @e[scores={CallStack00=1}] run function ctf:event/steal/blue
scoreboard players set @a CallStack00 0

execute at @e[name="RedBase",scores={FlagPresent=1}] if entity @e[name="BlueBase",scores={FlagPresent=1}] if entity @p[team=cecs,distance=..3] run scoreboard players set @p[team=cecs,distance=..3] CallStack00 1
execute if entity @e[scores={CallStack00=1}] run function ctf:event/steal/red
scoreboard players set @a CallStack00 0

execute at @e[name="RedMobile",scores={FlagPresent=1}] if entity @e[name="BlueBase",scores={FlagPresent=1}] if entity @p[team=cecs,distance=..3] run scoreboard players set @p[team=cecs,distance=..3] CallStack00 1
execute if entity @e[scores={CallStack00=1}] run function ctf:event/steal/red
scoreboard players set @a CallStack00 0


# Have the mobile follow the player around
execute at @e[scores={HasBlueFlag=1,IsDead=0}] if entity @e[scores={HasBlueFlag=1,IsDead=0}] run tp @e[name="BlueMobile"] ~ ~ ~
execute at @e[scores={HasRedFlag=1,IsDead=0}] if entity @e[scores={HasRedFlag=1,IsDead=0}] run tp @e[name="RedMobile"] ~ ~ ~


# If the player who had the flag died
execute if entity @e[scores={HasBlueFlag=1,IsDead=1}] run scoreboard players set @e[scores={HasBlueFlag=1,IsDead=1}] CallStack00 1
execute if entity @e[scores={CallStack00=1}] run function ctf:event/drop/blue
scoreboard players set @a CallStack00 0

execute if entity @e[scores={HasRedFlag=1,IsDead=1}] run scoreboard players set @e[scores={HasRedFlag=1,IsDead=1}] CallStack00 1
execute if entity @e[scores={CallStack00=1}] run function ctf:event/drop/red
scoreboard players set @a CallStack00 0



# If a player recovers their team's flag
execute at @e[name="BlueMobile",scores={FlagPresent=1}] if entity @p[team=cecs,distance=..3] run scoreboard players set @p[team=cecs,distance=..3] CallStack00 1
execute if entity @e[scores={CallStack00=1}] run function ctf:event/recover/blue
scoreboard players set @a CallStack00 0

execute at @e[name="RedMobile",scores={FlagPresent=1}] if entity @p[team=cola,distance=..3] run scoreboard players set @p[team=cola,distance=..3] CallStack00 1
execute if entity @e[scores={CallStack00=1}] run function ctf:event/recover/red
scoreboard players set @a CallStack00 0



# # If the player who has the flag fully captures it
execute at @e[name="RedBase"] if entity @p[team=cola,distance=..3,scores={HasBlueFlag=1,IsDead=0}] run scoreboard players set @p[team=cola,distance=..3,scores={HasBlueFlag=1,IsDead=0}] CallStack00 1
execute if entity @e[scores={CallStack00=1}] run function ctf:event/capture/blue
scoreboard players set @a CallStack00 0

execute at @e[name="BlueBase"] if entity @p[team=cecs,distance=..3,scores={HasRedFlag=1,IsDead=0}] run scoreboard players set @p[team=cecs,distance=..3,scores={HasRedFlag=1,IsDead=0}] CallStack00 1
execute if entity @e[scores={CallStack00=1}] run function ctf:event/capture/red
scoreboard players set @a CallStack00 0

# Give a strength boost to players near their own base
execute at @e[name="BlueBase"] run effect give @a[team=cecs,distance=..5] minecraft:strength 5 1 true
execute at @e[name="RedBase"] run effect give @a[team=cola,distance=..5] minecraft:strength 5 1 true

# Give any player that is holding the flag glowing
effect clear @a minecraft:glowing
effect give @a[scores={HasBlueFlag=1}] minecraft:glowing 1 1 true
effect give @a[scores={HasRedFlag=1}] minecraft:glowing 1 1 true

# Remove all pearls from the ground
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:ender_pearl"},OnGround:1b}] run kill @s

# If a player used an ender pearl, start the cooldown
scoreboard players set @a[scores={UsedPearl=1..}] PearlCooldown 200
scoreboard players set @a[scores={UsedPearl=1..}] UsedPearl 0

# Check to see if players have finished the cooldown and need a new pearl
give @a[scores={PearlCooldown=0}] minecraft:ender_pearl

scoreboard players remove @a[scores={PearlCooldown=0..}] PearlCooldown 1

# Update deaths
scoreboard players set @e[scores={DeathRegisterd=1}] IsDead 0

clear @a[scores={DeathRegisterd=1}]


replaceitem entity @a[scores={DeathRegisterd=1},team=cola] armor.chest minecraft:leather_chestplate{Enchantments:[{id:unbreaking,lvl:1000},{id:binding_curse,lvl:1}],display:{color:16711680}}
replaceitem entity @a[scores={DeathRegisterd=1},team=cecs] armor.chest minecraft:leather_chestplate{Enchantments:[{id:unbreaking,lvl:1000},{id:binding_curse,lvl:1}],display:{color:255}}
loot give @a[scores={DeathRegisterd=1}] loot ctf:classes/normie

scoreboard players set @e[scores={DeathRegisterd=1}] DeathRegisterd 0
scoreboard players set @e[scores={DeathRegisterd=1}] PearlCooldown -1
scoreboard players set @e[scores={IsDead=1..100}] DeathRegisterd 1

weather clear

effect give @a minecraft:speed 100000 1 true

