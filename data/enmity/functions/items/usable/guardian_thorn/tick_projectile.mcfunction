tag @s add enmity.this
execute if entity @s[tag=!enmity.reached_target] run function enmity:utility/projectiles/random_spread/5dg
execute if entity @s[tag=enmity.reached_target] run function enmity:utility/projectiles/random_spread/10dg
execute if entity @e[type=#enmity:enemies,limit=1,sort=nearest,tag=!enmity.sentry,tag=!enmity.projectile,distance=..2.4] run tag @s add enmity.reached_target
execute if entity @e[type=#enmity:enemies,limit=1,sort=nearest,tag=!enmity.sentry,tag=!enmity.projectile,distance=2.4..7] run tp @s[tag=!enmity.reached_target] ~ ~ ~ facing entity @e[type=#enmity:enemies,limit=1,sort=nearest,tag=!enmity.sentry,tag=!enmity.projectile,distance=2.4..7] eyes
tp @s ^ ^ ^0.8
particle dust 0 0 1 1 ~ ~ ~ 0 0 0 0 1 force
particle rain ~ ~ ~ 0.08 0.08 0.08 0 5 force
particle rain ^ ^ ^0.4 0.08 0.08 0.08 0 5 force
execute positioned ~-0.3 ~-0.3 ~-0.3 as @e[scores={iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0,limit=1] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id positioned ~-0.39 ~-0.39 ~-0.39 if entity @s[dx=0] run tag @s add enmity.hit
execute positioned ^ ^ ^0.267 positioned ~-0.3 ~-0.3 ~-0.3 as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0,limit=1] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id positioned ~-0.39 ~-0.39 ~-0.39 if entity @s[dx=0] run tag @s add enmity.hit
execute positioned ^ ^ ^0.533 positioned ~-0.3 ~-0.3 ~-0.3 as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0,limit=1] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id positioned ~-0.39 ~-0.39 ~-0.39 if entity @s[dx=0] run tag @s add enmity.hit
execute if entity @e[type=!#enmity:not_living,tag=enmity.hit] run function enmity:entities/mobs/elder_guardian/projectiles/bolt/damage
execute if score @s enmity.age matches 40.. run function enmity:entities/mobs/elder_guardian/projectiles/bolt/die
execute if entity @s[scores={enmity.impact_ct=3..}] run function enmity:entities/mobs/elder_guardian/projectiles/bolt/die
tag @s remove enmity.this