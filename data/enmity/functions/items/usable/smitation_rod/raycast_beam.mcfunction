scoreboard players add @s enmity.raycast 1
particle bubble_pop ~ ~ ~ 0.1 0.1 0.1 0 1 force
particle electric_spark ^ ^ ^0.125 0.1 0.1 0.1 0 1 force
particle bubble_pop ^ ^ ^0.25 0.1 0.1 0.1 0 1 force
particle electric_spark ^ ^ ^0.375 0.1 0.1 0.1 0 1 force
tag @s add enmity.this
execute positioned ^ ^ ^0.5 run function enmity:utility/solid_detection/check
execute positioned ~-0.3 ~-0.3 ~-0.3 as @e[scores={iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0,limit=1] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id positioned ~-0.39 ~-0.39 ~-0.39 if entity @s[dx=0] run tag @s add enmity.hit
execute positioned ^ ^ ^0.25 positioned ~-0.3 ~-0.3 ~-0.3 as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0,limit=1] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id positioned ~-0.39 ~-0.39 ~-0.39 if entity @s[dx=0] run tag @s add enmity.hit
execute if entity @e[type=!#enmity:not_living,tag=enmity.hit] run function enmity:items/usable/smitation_rod/damage
tag @s remove enmity.this
execute if score @s enmity.raycast matches 12.. run scoreboard players set @s enmity.raycast -1
execute if entity @s[tag=enmity.in_solid] run scoreboard players set @s enmity.raycast 0
execute if score @s enmity.impact_ct matches 4.. run scoreboard players set @s enmity.raycast 0
execute if score @s enmity.raycast matches 0 run particle electric_spark ~ ~ ~ 0 0 0 0.7 15 force
execute if score @s enmity.raycast matches 0 run playsound minecraft:entity.creeper.primed neutral @a[distance=0..] ~ ~ ~ 2 2 0
execute if score @s enmity.raycast matches 1.. positioned ^ ^ ^0.5 run function enmity:items/usable/smitation_rod/raycast_beam