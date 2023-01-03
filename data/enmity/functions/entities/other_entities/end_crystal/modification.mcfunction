execute if entity @s[nbt={ShowBottom:1b}] positioned ~ ~-1 ~ run fill ~3 ~ ~3 ~-3 ~4 ~-3 air replace iron_bars
execute if entity @s[nbt={ShowBottom:1b}] run tag @s add enmity.dragon_crystal
execute if entity @s[tag=enmity.dragon_crystal] run scoreboard players set @s enmity.cooldown 0
execute if entity @s[tag=enmity.dragon_crystal] run data merge entity @s {Invulnerable:1}
tag @s add enmity.modified