scoreboard players remove @s enmity.raycast 1
particle dragon_breath ~ ~ ~ 0 0 0 0 1 force
particle dragon_breath ^ ^ ^0.25 0 0 0 0 1 force
tag @s add enmity.this
execute unless entity @s[tag=enmity.did_damage] positioned ~-0.3 ~-0.3 ~-0.3 as @e[type=!ender_dragon,scores={iframes=0},type=!#enmity:not_living,tag=!enmity.target_dummy,tag=!enmity.projectile,dx=0,limit=1] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id positioned ~-0.39 ~-0.39 ~-0.39 if entity @s[dx=0] run tag @s add enmity.hit
execute unless entity @s[tag=enmity.did_damage] positioned ^ ^ ^0.25 positioned ~-0.3 ~-0.3 ~-0.3 as @e[type=!ender_dragon,scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.target_dummy,tag=!enmity.projectile,dx=0,limit=1] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id positioned ~-0.39 ~-0.39 ~-0.39 if entity @s[dx=0] run tag @s add enmity.hit
execute if entity @e[type=!#enmity:not_living,tag=enmity.hit] run function enmity:entities/mobs/ender_dragon/projectiles/ray/damage
tag @s remove enmity.this
execute if score @s enmity.raycast matches 1.. positioned ^ ^ ^0.5 run function enmity:entities/mobs/ender_dragon/projectiles/ray/raycast_2
execute if score @s enmity.raycast matches 0 run scoreboard players operation @s enmity.raycast = @s enmity.math_a