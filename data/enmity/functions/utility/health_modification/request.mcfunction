scoreboard players set @s enmity.math_a 0
scoreboard players operation @s enmity.math_a = @e[tag=enmity.this,limit=1] enmity.dmg
scoreboard players operation @s enmity.math_a -= @s enmity.dmg_rdc
execute if score @s enmity.math_a matches ..1 run function enmity:utility/health_modification/reduce_health_by_1
execute if score @s enmity.math_a matches 2 run function enmity:utility/health_modification/reduce_health_by_2
execute if score @s enmity.math_a matches 3 run function enmity:utility/health_modification/reduce_health_by_3
execute if score @s enmity.math_a matches 4 run function enmity:utility/health_modification/reduce_health_by_4
execute if score @s enmity.math_a matches 5 run function enmity:utility/health_modification/reduce_health_by_5
execute if score @s enmity.math_a matches 6 run function enmity:utility/health_modification/reduce_health_by_6
execute if score @s enmity.math_a matches 7 run function enmity:utility/health_modification/reduce_health_by_7
execute if score @s enmity.math_a matches 8 run function enmity:utility/health_modification/reduce_health_by_8
execute if score @s enmity.math_a matches 9 run function enmity:utility/health_modification/reduce_health_by_9
execute if score @s enmity.math_a matches 10 run function enmity:utility/health_modification/reduce_health_by_10
execute if score @s enmity.math_a matches 11 run function enmity:utility/health_modification/reduce_health_by_11
execute if score @s enmity.math_a matches 12 run function enmity:utility/health_modification/reduce_health_by_12
execute if score @s enmity.math_a matches 13 run function enmity:utility/health_modification/reduce_health_by_13
execute if score @s enmity.math_a matches 14 run function enmity:utility/health_modification/reduce_health_by_14
execute if score @s enmity.math_a matches 15 run function enmity:utility/health_modification/reduce_health_by_15
execute if score @s enmity.math_a matches 16 run function enmity:utility/health_modification/reduce_health_by_16
execute if score @s enmity.math_a matches 17 run function enmity:utility/health_modification/reduce_health_by_17
execute if score @s enmity.math_a matches 18 run function enmity:utility/health_modification/reduce_health_by_18
execute if score @s enmity.math_a matches 19 run function enmity:utility/health_modification/reduce_health_by_19
execute if score @s enmity.math_a matches 20 run function enmity:utility/health_modification/reduce_health_by_20
execute if score @s enmity.math_a matches 21 run function enmity:utility/health_modification/reduce_health_by_21
execute if score @s enmity.math_a matches 22 run function enmity:utility/health_modification/reduce_health_by_22
execute if score @s enmity.math_a matches 23 run function enmity:utility/health_modification/reduce_health_by_23
execute if score @s enmity.math_a matches 24.. run function enmity:utility/health_modification/reduce_health_by_24