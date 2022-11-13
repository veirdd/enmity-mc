scoreboard players add @s enmity.raycast 1
particle dust 0.2 0.2 0.8 0.6 ~ ~ ~ 0 0 0 0 1 force
particle dust 0.5 0 0.8 0.6 ^ ^ ^0.125 0 0 0 0 1 force
particle dust 0.2 0.2 0.8 0.6 ^ ^ ^0.25 0 0 0 0 1 force
particle dust 0.5 0 0.8 0.6 ^ ^ ^0.375 0 0 0 0 1 force
execute if score @s enmity.raycast matches 128.. run scoreboard players set @s enmity.raycast -1
tp ~ ~ ~
execute as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run tag @s add enmity.hit
execute positioned ^ ^ ^0.17 as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run tag @s add enmity.hit
execute positioned ^ ^ ^0.33 as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run tag @s add enmity.hit
execute if entity @e[type=!#enmity:not_living,tag=enmity.hit] run function enmity:items/usable/sacred_storm/damage_beam
execute if score @s enmity.raycast matches 1.. positioned ^ ^ ^0.5 run function enmity:items/usable/sacred_storm/raycast_beam