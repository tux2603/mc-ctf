execute at @s anchored feet run setblock ~ ~ ~ minecraft:birch_wall_sign[facing=south]
execute at @s anchored feet run data merge block ~ ~ ~ {Text1:"{\"text\":\"[Standard]\",\"bold\":true,\"color\":\"black\",\"underlined\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/tag @s add JoinNormie\"}}","Text2":"\"Medium Armor\"","Text3":"\"Slowness Arrows\"","Text4":"\"Ender Pearl\""}