execute at @e[type=illusioner,tag=enmity.this,limit=1] run particle reverse_portal ~ ~1 ~ 0.4 0.4 0.4 0.5 30 force
execute at @e[type=illusioner,tag=enmity.this,limit=1] run playsound entity.illusioner.mirror_move hostile @a[distance=0..] ~ ~ ~ 2 1 0
tp @s ~ ~ ~
execute store result score @s enmity.math_a run data get entity @s Pos[0] 1
execute store result score @s enmity.math_b run data get entity @s Pos[1] 1
execute store result score @s enmity.math_c run data get entity @s Pos[2] 1
scoreboard players operation @s enmity.math_a *= %const_100 enmity.value
scoreboard players operation @s enmity.math_b *= %const_100 enmity.value
scoreboard players operation @s enmity.math_c *= %const_100 enmity.value
scoreboard players operation @s enmity.math_a += %const_50 enmity.value
scoreboard players operation @s enmity.math_b += %const_50 enmity.value
scoreboard players operation @s enmity.math_c += %const_50 enmity.value
execute store result entity @e[type=illusioner,tag=enmity.this,limit=1] Pos[0] double 0.01 run scoreboard players get @s enmity.math_a
execute store result entity @e[type=illusioner,tag=enmity.this,limit=1] Pos[1] double 0.01 run scoreboard players get @s enmity.math_b
execute store result entity @e[type=illusioner,tag=enmity.this,limit=1] Pos[2] double 0.01 run scoreboard players get @s enmity.math_c
tag @e[type=illusioner,tag=enmity.this,limit=1] add enmity.teleported
kill @e[type=marker,tag=enmity.teleport]