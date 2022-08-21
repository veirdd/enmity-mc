playsound entity.elder_guardian.death neutral @a[distance=0..] ~ ~ ~ 2 2 0
playsound block.note_block.basedrum neutral @a[distance=0..] ~ ~ ~ 2 0 0
playsound block.note_block.basedrum neutral @a[distance=0..] ~ ~ ~ 2 0 0
particle dust 0.3 0.6 1 1 ~ ~ ~ 0.5 0.5 0.5 0 50 force
tag @s add enmity.this
execute as @a if score @s enmity.player_id = @e[type=marker,tag=enmity.this,limit=1] enmity.player_id run tag @s add enmity.this
tag @s remove enmity.this
execute store result entity @s Rotation[0] float 1 run data get entity @p[tag=enmity.this] Rotation[0] 1
execute store result entity @s Rotation[1] float 1 run data get entity @p[tag=enmity.this] Rotation[1] 1
tag @a[tag=enmity.this] remove enmity.this
stopsound @a[distance=..20] * entity.elder_guardian.ambient