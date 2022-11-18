tp @s ^ ^ ^0.8
particle smoke ~ ~1.7 ~ 0 0 0 0 1
execute positioned ^ ^ ^10 unless entity @p[distance=..20] run scoreboard players add @s enmity.age 2
execute as @s[scores={enmity.age=38..}] positioned ~ ~1.7 ~ run function enmity:entities/mobs/wither/projectiles/wither_skull/die
execute positioned ~ ~1.7 ~ positioned ~-0.25 ~-0.25 ~-0.25 if score @s enmity.age matches 6.. as @e[type=!wither,scores={iframes=0},type=!#enmity:not_living,tag=!enmity.target_dummy,tag=!enmity.projectile,dx=0,limit=1] positioned ~-0.49 ~-0.49 ~-0.49 if entity @s[dx=0] run tag @s add enmity.hit
execute positioned ~ ~1.7 ~ positioned ^ ^ ^0.27 positioned ~-0.25 ~-0.25 ~-0.25 if score @s enmity.age matches 6.. as @e[type=!wither,scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.target_dummy,tag=!enmity.projectile,dx=0,limit=1] positioned ~-0.49 ~-0.49 ~-0.49 if entity @s[dx=0] run tag @s add enmity.hit
execute positioned ~ ~1.7 ~ positioned ^ ^ ^0.53 positioned ~-0.25 ~-0.25 ~-0.25 if score @s enmity.age matches 6.. as @e[type=!wither,scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.target_dummy,tag=!enmity.projectile,dx=0,limit=1] positioned ~-0.49 ~-0.49 ~-0.49 if entity @s[dx=0] run tag @s add enmity.hit
execute if entity @e[type=!#enmity:not_living,tag=enmity.hit] positioned ~ ~1.7 ~ run function enmity:entities/mobs/wither/projectiles/wither_skull/die