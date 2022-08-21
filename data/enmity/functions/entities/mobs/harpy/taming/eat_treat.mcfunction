tp @s ~ ~ ~ facing entity @e[type=item,tag=enmity.treat,limit=1] eyes
execute store result entity @s Rotation[1] float -1 run data get entity @s Rotation[1]
execute store result score @s enmity.math_a run data get entity @s Pos[0] 100
execute store result score @s enmity.math_b run data get entity @s Pos[1] 100
execute store result score @s enmity.math_c run data get entity @s Pos[2] 100
execute facing entity @e[type=item,tag=enmity.treat,limit=1] feet run summon marker ^ ^ ^-5 {Tags:["enmity.direction_anchor"]}
execute store result score @s enmity.math_d run data get entity @e[type=marker,tag=enmity.direction_anchor,limit=1] Pos[0] 100
execute store result score @s enmity.math_e run data get entity @e[type=marker,tag=enmity.direction_anchor,limit=1] Pos[1] 100
execute store result score @s enmity.math_f run data get entity @e[type=marker,tag=enmity.direction_anchor,limit=1] Pos[2] 100
scoreboard players operation @s enmity.math_a -= @s enmity.math_d
scoreboard players operation @s enmity.math_b -= @s enmity.math_e
scoreboard players operation @s enmity.math_c -= @s enmity.math_f
execute store result score @s enmity.math_d run data get entity @s Pos[1] 1000
execute store result score @s enmity.math_e run data get entity @e[type=item,tag=enmity.treat,limit=1] Pos[1] 1000
scoreboard players operation @s enmity.math_e += %const_1500 enmity.value
scoreboard players operation @s enmity.math_e -= @s enmity.math_d
scoreboard players operation @s enmity.math_b += @s enmity.math_e
execute store result entity @s Motion[0] double 0.0001 run scoreboard players get @s enmity.math_a
execute store result entity @s Motion[1] double 0.0001 run scoreboard players get @s enmity.math_b
execute store result entity @s Motion[2] double 0.0001 run scoreboard players get @s enmity.math_c 
kill @e[type=marker,tag=enmity.direction_anchor]
execute if entity @e[type=item,tag=enmity.treat,distance=..2,nbt={PickupDelay:0s}] run function enmity:entities/mobs/harpy/taming/tame