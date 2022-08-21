tag @s add enmity.this
execute if entity @s[tag=enmity.player_targeting] positioned ^ ^ ^3 positioned ~ ~-1 ~ as @e[type=!#enmity:not_living,tag=!enmity.projectile,limit=1,sort=nearest,distance=..6] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id run tag @s add enmity.homing_target
execute if entity @s[tag=!enmity.player_targeting] positioned ^ ^ ^3 positioned ~ ~-1 ~ as @e[type=!#enmity:not_living,type=!player,tag=!enmity.projectile,limit=1,sort=nearest,distance=..6] run tag @s add enmity.homing_target
execute if entity @e[type=!#enmity:not_living,tag=enmity.homing_target] run function enmity:items/usable/rainbow_rod/home_in_projectile
tp @s ^ ^ ^1
function enmity:utility/solid_detection/check
execute positioned ^ ^ ^0.33 run function enmity:utility/solid_detection/check
execute positioned ^ ^ ^0.67 run function enmity:utility/solid_detection/check
playsound block.note_block.chime neutral @a[distance=0..] ~ ~ ~ 0.5 2 0
particle entity_effect ~ ~ ~ 0 0 0 0.1 2 force
particle end_rod ^ ^ ^0.25 0 0 0 0 1 force
execute if score @s enmity.age matches 2.. run particle end_rod ^ ^ ^-0.25 0 0 0 0 1 force
execute unless entity @e[type=!#enmity:not_living,tag=enmity.homing_target] as @a if score @s enmity.player_id = @e[type=marker,tag=enmity.this,limit=1] enmity.player_id run tag @s add enmity.this
execute unless entity @e[type=!#enmity:not_living,tag=enmity.homing_target] rotated as @p[tag=enmity.this] positioned ^ ^ ^1 facing entity @p[tag=enmity.this] eyes positioned ^ ^ ^0.7 run summon marker ~ ~ ~ {Tags:["enmity.direction_anchor"]}
execute unless entity @e[type=!#enmity:not_living,tag=enmity.homing_target] facing entity @e[type=marker,tag=enmity.direction_anchor] feet run tp @s ^ ^ ^1 facing ^ ^ ^2
tag @e[type=!#enmity:not_living,tag=enmity.homing_target] remove enmity.homing_target
kill @e[type=marker,tag=enmity.direction_anchor]
tag @a[tag=enmity.this] remove enmity.this
execute if entity @s[tag=enmity.in_solid] run function enmity:items/usable/rainbow_rod/die_projectile
execute as @e[scores={iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0,limit=1] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run tag @s add enmity.hit
execute positioned ^ ^ ^0.25 as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0,limit=1] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run tag @s add enmity.hit
execute positioned ^ ^ ^0.50 as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0,limit=1] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run tag @s add enmity.hit
execute positioned ^ ^ ^0.75 as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0,limit=1] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run tag @s add enmity.hit
execute positioned ^ ^ ^1 as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0,limit=1] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run tag @s add enmity.hit
execute if entity @e[type=!#enmity:not_living,tag=enmity.hit] run function enmity:items/usable/rainbow_rod/damage_projectile
execute if score @s enmity.age matches 120.. run function enmity:items/usable/rainbow_rod/die_projectile
execute if score @s enmity.impact_ct matches 3.. run function enmity:items/usable/rainbow_rod/die_projectile
tag @s remove enmity.this