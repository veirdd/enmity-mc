execute store result score @s enmity.dmg_buffer_1 run data get entity @s Health
execute if score @s[tag=!enmity.update_health] enmity.dmg_buffer_1 < @s enmity.dmg_buffer_2 run function enmity:utility/damage_indicators/show
execute store result score @s enmity.dmg_buffer_2 run data get entity @s Health