execute as @e[type=item,tag=enmity.potential_fuel] store result score @s enmity.math_a run data get entity @s Item.Count
execute as @e[type=item,tag=enmity.potential_fuel] run scoreboard players operation @s enmity.math_a *= %const_3600 enmity.value
execute store result score @s enmity.math_a run data get entity @s Fuel
scoreboard players operation @s enmity.math_a += @e[type=item,tag=enmity.potential_fuel,limit=1] enmity.math_a
execute if score @s enmity.math_a matches ..32767 run playsound entity.item.pickup neutral @a[distance=0..] ~ ~ ~ 0.4 2 0
execute if score @s enmity.math_a matches ..32767 store result entity @s Fuel short 1 run scoreboard players get @s enmity.math_a
execute if score @s enmity.math_a matches ..32767 run kill @e[type=item,tag=enmity.potential_fuel]
tag @e[type=item,tag=enmity.potential_fuel] remove enmity.potential_fuel