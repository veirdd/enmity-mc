particle dragon_breath ~ ~ ~ 0.1 0.1 0.1 0 3 force
particle dust 0.4 0.3 1 1 ~ ~ ~ 0.2 0.2 0.2 0 3 force
playsound entity.player.breath player @a[distance=0..] ~ ~ ~ 0.3 2 0
effect clear @s levitation
effect give @s levitation 2 242 true
tag @s add enmity.flying