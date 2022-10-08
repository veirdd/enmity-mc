tag @s add enmity.this
execute if entity @s[tag=enmity.player_targeting] as @e[type=!#enmity:not_living,tag=!enmity.projectile,distance=..16] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id run tag @s add enmity.homing_target
execute if entity @s[tag=!enmity.player_targeting] as @e[type=!#enmity:not_living,type=!player,tag=!enmity.projectile,distance=..16] run tag @s add enmity.homing_target
execute if entity @e[type=!#enmity:not_living,tag=enmity.homing_target] run function enmity:items/usable/terminal_flash/home_in_projectile
execute if score @s enmity.age matches ..5 run tp @s ^ ^ ^0.9
execute if score @s enmity.age matches 6..10 run tp @s ^ ^ ^0.7
execute if score @s enmity.age matches 11..15 run tp @s ^ ^ ^0.55
execute if score @s enmity.age matches 16..20 run tp @s ^ ^ ^0.4
execute if score @s enmity.age matches 21..25 run tp @s ^ ^ ^0.3
execute if score @s enmity.age matches 26..30 run tp @s ^ ^ ^0.2
execute if score @s enmity.age matches 31..35 run tp @s ^ ^ ^0.1
execute if score @s enmity.age matches 36..40 run tp @s ^ ^ ^0.05
execute if score @s enmity.age matches 41..50 run tp @s ^ ^ ^0.02
execute if score @s enmity.age matches 35 run particle end_rod ~ ~ ~ 0 0 0 0.3 20 force
execute if score @s enmity.age matches 45 run particle end_rod ~ ~ ~ 0 0 0 0.3 20 force
execute if score @s enmity.age matches 55 run particle end_rod ~ ~ ~ 0 0 0 0.3 50 force
execute if score @s enmity.age matches 35 run playsound block.beacon.activate neutral @a[distance=0..] ~ ~ ~ 2 2 0
execute if score @s enmity.age matches 45 run playsound block.beacon.activate neutral @a[distance=0..] ~ ~ ~ 2 2 0
execute if score @s enmity.age matches 35 run playsound block.beacon.activate neutral @a[distance=0..] ~ ~ ~ 2 1.5 0
execute if score @s enmity.age matches 45 run playsound block.beacon.activate neutral @a[distance=0..] ~ ~ ~ 2 1.5 0
particle end_rod ~ ~ ~ 0 0 0 0.02 4 force
particle end_rod ^ ^ ^0.4 0 0 0 0.02 4 force
particle soul_fire_flame ~ ~ ~ 0.075 0.075 0.075 0 1 force
execute positioned ~-0.25 ~-0.25 ~-0.25 as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id positioned ~-0.49 ~-0.49 ~-0.49 if entity @s[dx=0] run tag @s add enmity.hit
execute positioned ^ ^ ^0.3 positioned ~-0.25 ~-0.25 ~-0.25 as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id positioned ~-0.49 ~-0.49 ~-0.49 if entity @s[dx=0] run tag @s add enmity.hit
execute positioned ^ ^ ^-0.3 positioned ~-0.25 ~-0.25 ~-0.25 as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id positioned ~-0.49 ~-0.49 ~-0.49 if entity @s[dx=0] run tag @s add enmity.hit
execute if entity @e[type=!#enmity:not_living,tag=enmity.hit] run function enmity:items/usable/terminal_flash/impact_projectile
execute if score @s enmity.age matches 55.. run function enmity:items/usable/terminal_flash/impact_projectile
tag @s remove enmity.this