execute if block ~0.3 ~-0.0001 ~0.3 #minecraft:leaves run tag @s add enmity.fall
execute if block ~-0.3 ~-0.0001 ~0.3 #minecraft:leaves run tag @s add enmity.fall
execute if block ~0.3 ~-0.0001 ~-0.3 #minecraft:leaves run tag @s add enmity.fall
execute if block ~-0.3 ~-0.0001 ~-0.3 #minecraft:leaves run tag @s add enmity.fall
execute unless block ~0.3 ~-0.0001 ~0.3 #enmity:not_solid_and_leaves run tag @s remove enmity.fall
execute unless block ~-0.3 ~-0.0001 ~0.3 #enmity:not_solid_and_leaves run tag @s remove enmity.fall
execute unless block ~0.3 ~-0.0001 ~-0.3 #enmity:not_solid_and_leaves run tag @s remove enmity.fall
execute unless block ~-0.3 ~-0.0001 ~-0.3 #enmity:not_solid_and_leaves run tag @s remove enmity.fall
execute if entity @s[tag=enmity.fall] unless block ~0.3 ~ ~0.3 #minecraft:leaves unless block ~-0.3 ~ ~0.3 #minecraft:leaves unless block ~0.3 ~ ~-0.3 #minecraft:leaves unless block ~-0.3 ~ ~-0.3 #minecraft:leaves run tp @s ~ ~-0.0001 ~
tag @s remove enmity.fall