execute if entity @s[tag=!enmity.green] run particle white_ash ~ ~ ~ 0.3 0.3 0.3 0 50 force
execute if entity @s[tag=enmity.green] run particle spore_blossom_air ~ ~ ~ 0.3 0.3 0.3 0 30 force
execute if entity @s[tag=!enmity.green] run particle end_rod ~ ~ ~ 0.3 0.3 0.3 0.1 20 force
execute if entity @s[tag=enmity.green] run particle totem_of_undying ~ ~ ~ 0.3 0.3 0.3 0.4 20 force
stopsound @a[distance=..16] * block.chorus_flower.grow
playsound entity.llama.spit neutral @a[distance=0..] ~ ~ ~ 1.5 0 0
tp @s ~ -1000 ~
kill @s