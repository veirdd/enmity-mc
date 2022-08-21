scoreboard players set @s enmity.math_a 0
execute at @e[type=wither] run scoreboard players add @s enmity.math_a 1
execute if score @s enmity.math_a matches 2.. run function enmity:entities/mobs/wither/despawning/despawn_alive
execute unless score @s enmity.math_a matches 2.. unless predicate enmity:environment/in_the_nether run function enmity:entities/mobs/wither/despawning/despawn_wrong_dimension
execute unless score @s enmity.math_a matches 2.. if predicate enmity:environment/in_the_nether run tellraw @a {"text":"The Wither has awoken.","color":"gray"}
attribute @s generic.max_health modifier add 0-0-0-0-0 "0" 300 add
scoreboard players set @s enmity.dmg_rdc 3
scoreboard players set @s enmity.dmg_rdc_mtp 80
scoreboard players set @s enmity.phase 0
scoreboard players set @s enmity.math_c 5
execute unless score @s enmity.math_a matches 2.. run function enmity:entities/mobs/wither/reset_limbs
tag @s add enmity.boss