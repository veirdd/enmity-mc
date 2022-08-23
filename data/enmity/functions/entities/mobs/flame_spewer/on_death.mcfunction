kill @s
playsound minecraft:entity.magma_cube.jump hostile @a[distance=0..] ~ ~ ~ 1 0 0
playsound minecraft:entity.magma_cube.jump hostile @a[distance=0..] ~ ~ ~ 1 0 0
playsound minecraft:entity.magma_cube.jump hostile @a[distance=0..] ~ ~ ~ 1 0 0
particle lava ~ ~ ~ 0.6 0.6 0.6 0 20 force
execute if block ~ ~ ~ #enmity:replaceable run setblock ~ ~ ~ lava[level=5]
execute if block ~ ~1 ~ #enmity:replaceable run setblock ~ ~1 ~ lava[level=5]