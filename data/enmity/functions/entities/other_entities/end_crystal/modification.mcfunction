execute if entity @s[nbt={ShowBottom:1b}] positioned ~ ~-1 ~ run fill ~3 ~ ~3 ~-3 ~4 ~-3 air replace iron_bars
execute if entity @s[nbt={ShowBottom:1b}] run tag @s add enmity.dragon_crystal
tag @s add enmity.modified