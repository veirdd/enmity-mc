execute if entity @s[tag=enmity.leaf] at @s run function enmity:items/usable/silvan_wand/tick_projectile
execute if entity @s[tag=enmity.leaf2] at @s run function enmity:items/usable/staff_of_nature/tick_projectile
execute if entity @s[tag=enmity.mineral] at @s run function enmity:items/usable/mineral_rumbler/tick_projectile
execute if entity @s[tag=enmity.silvan_spirit] at @s run function enmity:items/usable/silvan_spirit_staff/tick
execute if entity @s[tag=enmity.wither_skull] at @s run function enmity:items/usable/withered_scepter/tick_projectile
execute if entity @s[tag=enmity.wither_skull2,scores={enmity.age=5..}] if score %difficulty enmity.value matches 2 at @s run function enmity:entities/mobs/wither/projectiles/wither_skull/tick_expert
execute if entity @s[tag=enmity.wither_skull2,scores={enmity.age=5..}] if score %difficulty enmity.value matches 1 at @s run function enmity:entities/mobs/wither/projectiles/wither_skull/tick_normal
execute if entity @s[tag=enmity.sky_fracture] at @s run function enmity:items/usable/sky_fracture/tick_projectile
execute if entity @s[tag=enmity.liquidation_trident] at @s run function enmity:items/usable/liquidator/tick_projectile
execute if entity @s[tag=enmity.boulder,scores={enmity.age=5..}] at @s run function enmity:items/usable/boulder_staff/tick
execute if entity @s[tag=enmity.boulder,scores={enmity.age=5..},tag=enmity.no_motion,tag=!enmity.falling] at @s run function enmity:items/usable/boulder_staff/motion
execute if entity @s[tag=enmity.fang] at @s run function enmity:items/usable/fang_staff/tick_projectile
execute if entity @s[tag=enmity.dazzling_rod] at @s run function enmity:items/usable/dazzling_rod/tick
execute if entity @s[tag=enmity.sculk_verge] at @s run function enmity:items/usable/sculk_verge/tick
data modify entity @s Fire set value -1s