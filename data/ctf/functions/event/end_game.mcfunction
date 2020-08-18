tellraw @a [{"color": "green", "text": "Game over!"}]

scoreboard players set Game GameTime -1
execute at @a run playsound minecraft:entity.ender_dragon.death master @s ~ ~ ~ 1023

effect clear @a
effect give @a minecraft:slowness 20 255
effect give @a minecraft:jump_boost 20 128

execute if score BlueTeam TeamCaptured > RedTeam TeamCaptured run tellraw @a [{"color": "green", "text": "Team "}, {"color": "blue", "text": "blue"}, {"color": "green", "text": " has won!"}]
execute if score BlueTeam TeamCaptured < RedTeam TeamCaptured run tellraw @a [{"color": "green", "text": "Team "}, {"color": "red", "text": "red"}, {"color": "green", "text": " has won!"}]
execute if score BlueTeam TeamCaptured = RedTeam TeamCaptured run tellraw @a [{"color": "green", "text": "There was somehow a tie... interesting"}]