execute at @s anchored feet run setblock ~ ~ ~ minecraft:birch_sign
execute at @s anchored feet run data merge block ~ ~ ~ {Text1:"{\"text\":\"[Assassin]\",\"bold\":true,\"color\":\"white\",\"underlined\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/tag @s add JoinAssassin\"}}","Text2":"\"1-Hit Sword\"","Text3":"\"kills you too :(\"","Text4":"\"Can't Capture\""}