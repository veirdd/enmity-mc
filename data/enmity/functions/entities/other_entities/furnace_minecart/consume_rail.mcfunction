execute as @e[type=item,tag=enmity.potential_rail] store result score @s enmity.math_a run data get entity @s Item.Count
execute store result score @s enmity.math_a run data get entity @s Air
scoreboard players operation @s enmity.math_a += @e[type=item,tag=enmity.potential_rail,limit=1] enmity.math_a
execute if score @s enmity.math_a matches ..512 run playsound entity.item.pickup neutral @a[distance=0..] ~ ~ ~ 0.4 2 0
execute if score @s enmity.math_a matches ..512 store result entity @s Air short 1 run scoreboard players get @s enmity.math_a
execute if score @s enmity.math_a matches ..512 run kill @e[type=item,tag=enmity.potential_rail]
tag @e[type=item,tag=enmity.potential_rail] remove enmity.potential_rail