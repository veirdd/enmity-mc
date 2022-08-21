execute store result score @s enmity.math_a run data get entity @s Pos[0] 5000
execute store result score @s enmity.math_b run data get entity @s Pos[1] 5000
execute store result score @s enmity.math_c run data get entity @s Pos[2] 5000
execute store result score @s enmity.math_d run data get entity @p[tag=enmity.this] Pos[0] 5000
execute store result score @s enmity.math_e run data get entity @p[tag=enmity.this] Pos[1] 5000
execute store result score @s enmity.math_f run data get entity @p[tag=enmity.this] Pos[2] 5000
scoreboard players add @s enmity.math_e 7500
scoreboard players operation @s enmity.math_a -= @s enmity.math_d
scoreboard players operation @s enmity.math_b -= @s enmity.math_e
scoreboard players operation @s enmity.math_c -= @s enmity.math_f
execute store result score @s enmity.math_d run data get entity @s Motion[0] 100000
execute store result score @s enmity.math_e run data get entity @s Motion[1] 100000
execute store result score @s enmity.math_f run data get entity @s Motion[2] 100000
execute store result entity @s Motion[0] double 0.00001 run scoreboard players operation @s enmity.math_a += @s enmity.math_d
execute store result entity @s Motion[1] double 0.00001 run scoreboard players operation @s enmity.math_b += @s enmity.math_e
execute store result entity @s Motion[2] double 0.00001 run scoreboard players operation @s enmity.math_c += @s enmity.math_f
playsound minecraft:block.note_block.xylophone neutral @p[tag=enmity.this] ~ ~ ~ 0.7 2 0