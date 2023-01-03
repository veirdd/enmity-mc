execute if entity @s[tag=enmity.soul2] at @s run function enmity:items/usable/the_dance_of_souls/tick_projectile
execute if entity @s[tag=enmity.infernal_helix_projectile] at @s run function enmity:items/usable/infernal_helix_staff/tick_projectile
execute if entity @s[tag=enmity.sacred_storm_projectile] at @s run function enmity:items/usable/sacred_storm/tick_projectile
execute if entity @s[tag=enmity.sculkbolt] at @s run function enmity:entities/mobs/warden/tick_projectile
execute if score %difficulty enmity.value matches 2 if entity @s[tag=enmity.homing_soul] at @s run function enmity:entities/mobs/wither/projectiles/homing_soul/tick_expert
execute if score %difficulty enmity.value matches 1 if entity @s[tag=enmity.homing_soul] at @s run function enmity:entities/mobs/wither/projectiles/homing_soul/tick_normal
data modify entity @s Fire set value -1s