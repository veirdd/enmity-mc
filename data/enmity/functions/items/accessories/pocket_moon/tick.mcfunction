tag @s add enmity.homing_target
execute as @e[type=#enmity:common_projectiles,type=!armor_stand,type=!item,tag=enmity.projectile,tag=!enmity.sentry,distance=..10] at @s run function enmity:items/accessories/pocket_moon/gravitate
execute as @e[type=armor_stand,tag=enmity.projectile,tag=!enmity.sentry,distance=..10] at @s run function enmity:items/accessories/pocket_moon/gravitate_armor_stand
tag @s remove enmity.homing_target