execute unless entity @s[tag=enmity.end_wither_skeleton] run particle white_ash ~ ~ ~ 0.3 0.3 0.3 0 50 force
execute unless entity @s[tag=enmity.end_wither_skeleton] run particle end_rod ~ ~ ~ 0.3 0.3 0.3 0.1 20 force
execute if entity @s[tag=enmity.end_wither_skeleton] run particle smoke ~ ~ ~ 0.3 0.3 0.3 0 30 force
execute if entity @s[tag=enmity.end_wither_skeleton] run particle dragon_breath ~ ~ ~ 0.3 0.3 0.3 0.1 15 force
stopsound @a[distance=..24] * block.chorus_flower.grow
playsound entity.llama.spit neutral @a[distance=0..] ~ ~ ~ 1.5 0 0
kill @s