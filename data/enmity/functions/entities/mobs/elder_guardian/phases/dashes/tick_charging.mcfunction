particle end_rod ~ ~1 ~ 0 0 0 0.1 3 force
execute if score @s enmity.age matches 40.. if score %difficulty enmity.value matches 1 if score @s enmity.cooldown matches 0 run function enmity:entities/mobs/elder_guardian/phases/dashes/dash
execute if score @s enmity.age matches 40.. if score %difficulty enmity.value matches 2 if score @s enmity.cooldown matches 0 run function enmity:entities/mobs/elder_guardian/phases/dashes/dash