execute store result score @s enmity.math_a run data get entity @s ActiveEffects[{Id:25}].Duration
execute if score @s enmity.math_a matches 100.. run effect give @s blindness 10 0
execute if score @s enmity.math_a matches 100.. run tag @s add enmity.this
execute if score @s enmity.math_a matches 100.. run scoreboard players set @s enmity.taken_dmg 6
execute if score @s enmity.math_a matches 100.. run function enmity:misc/health_modification/request
execute if score @s enmity.math_a matches 100.. run tag @s remove enmity.this