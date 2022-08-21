execute as @a if score @s enmity.player_id = @e[type=marker,tag=enmity.this,limit=1] enmity.player_id run tag @s add enmity.this
tp @a[tag=enmity.this] ~ ~-0.9 ~
tag @a[tag=enmity.this] remove enmity.this
particle reverse_portal ~ ~ ~ 0.5 0.5 0.5 0.5 40 force
particle portal ~ ~ ~ 0.5 0.5 0.5 0.5 40 force
particle flash ~ ~ ~ 0 0 0 1 5 force
playsound entity.illusioner.mirror_move neutral @a[distance=0..] ~ ~ ~ 2 1.4 0
playsound entity.ender_dragon.hurt neutral @a[distance=0..] ~ ~ ~ 1 1.7 0
kill @s