playsound block.note_block.basedrum neutral @a[distance=0..] ~ ~ ~ 2 0 0
execute store result entity @s Rotation[0] float -1 run data get entity @s Rotation[0]
tag @s add enmity.bounced
scoreboard players add @s enmity.impact_ct 2