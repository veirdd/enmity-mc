particle dust 0.8 0.7 1 1 ~ ~0.2 ~ 0.2 0.2 0.2 0 2 force
particle snowflake ~ ~ ~ 0.2 0.2 0.2 0 2 force
playsound block.chorus_flower.grow player @a[distance=0..] ~ ~ ~ 2 2 0
effect give @s levitation 2 7 true
tag @s add enmity.flying
scoreboard players remove @s enmity.flight 1