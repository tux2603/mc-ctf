execute at @s anchored feet run setblock ~ ~ ~ minecraft:birch_sign
execute at @s anchored feet run data merge block ~ ~ ~ {Text1:"{\"text\":\"[Mage]\",\"bold\":true,\"color\":\"dark_purple\",\"underlined\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/tag @s add JoinMage\"}}","Text2":"\"Lotsa Potions\"","Text3":"\"Light Armor\"","Text4":"[{\"text\":\"It's \"},{\"text\":\"Maaaaagic\",\"italic\":true}]"}