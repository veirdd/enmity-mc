tag @s add enmity.this
execute as @a if score @s enmity.player_id = @e[type=marker,tag=enmity.this,limit=1] enmity.player_id run tag @s add enmity.this
execute if score @s enmity.age matches 2 as @a[tag=enmity.this] at @s run function enmity:items/usable/sky_fracture/summon_projectile_0
execute if score @s enmity.age matches 4 as @a[tag=enmity.this] at @s run function enmity:items/usable/sky_fracture/summon_projectile_1
execute if score @s enmity.age matches 4.. as @a[tag=enmity.this] run tag @s remove enmity.sky_fracture
execute if score @s enmity.age matches 4.. run kill @s
tag @s remove enmity.this
tag @a[tag=enmity.this] remove enmity.this