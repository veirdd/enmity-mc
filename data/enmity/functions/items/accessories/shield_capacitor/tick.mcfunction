execute if entity @s[tag=enmity.accessories.shield_capacitor] run function enmity:items/accessories/shield_capacitor/normal
execute if entity @s[tag=enmity.accessories.elemental_emblem,tag=!enmity.accessories.shield_capacitor] run function enmity:items/accessories/shield_capacitor/elemental
execute unless score @s enmity.shield_capacitor matches 2400 run scoreboard players add @s enmity.shield_capacitor 1
execute if entity @s[tag=enmity.accessories.elemental_emblem,tag=!enmity.accessories.shield_capacitor] unless score @s enmity.shield_capacitor matches 2399.. run scoreboard players add @s enmity.shield_capacitor 1