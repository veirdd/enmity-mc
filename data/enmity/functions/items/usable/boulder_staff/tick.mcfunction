particle crit ~ ~0.5 ~ 0.2 0.2 0.2 0 3 force
execute unless block ^-0.2 ^0.6 ^0.2 #enmity:not_solid run function enmity:items/usable/boulder_staff/die
execute unless block ^0.2 ^0.6 ^0.2 #enmity:not_solid run function enmity:items/usable/boulder_staff/die
execute unless block ~ ~-0.1 ~ #enmity:not_solid run function enmity:items/usable/boulder_staff/impact_ground
execute if score @s enmity.age matches 100.. run function enmity:items/usable/boulder_staff/die
tag @s add enmity.this
execute if entity @s[tag=!enmity.giant] positioned ~ ~0.5 ~ positioned ~-0.3 ~-0.3 ~-0.3 as @e[scores={iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0,limit=1] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id positioned ~-0.39 ~-0.39 ~-0.39 if entity @s[dx=0] run tag @s add enmity.hit
execute if entity @s[tag=!enmity.giant] positioned ~ ~0.5 ~ positioned ~-0.3 ~-0.3 ~-0.3 positioned ^ ^ ^0.5 as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0,limit=1] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id positioned ~-0.39 ~-0.39 ~-0.39 if entity @s[dx=0] run tag @s add enmity.hit
execute if entity @s[tag=enmity.giant] positioned ~ ~0.5 ~ positioned ~-0.3 ~-0.3 ~-0.3 as @e[scores={iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,type=!giant,dx=0,limit=1] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id positioned ~-0.39 ~-0.39 ~-0.39 if entity @s[dx=0] run tag @s add enmity.hit
execute if entity @s[tag=enmity.giant] positioned ~ ~0.5 ~ positioned ~-0.3 ~-0.3 ~-0.3 positioned ^ ^ ^0.5 as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,type=!giant,dx=0,limit=1] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id positioned ~-0.39 ~-0.39 ~-0.39 if entity @s[dx=0] run tag @s add enmity.hit
execute if entity @e[type=!#enmity:not_living,tag=enmity.hit] run function enmity:items/usable/boulder_staff/damage
tag @s remove enmity.this
execute if entity @s[tag=enmity.falling,predicate=enmity:entity/is_on_ground] run function enmity:items/usable/boulder_staff/die
execute if score @s[tag=!enmity.falling] enmity.age matches 6 run particle crit ~ ~0.5 ~ 0.5 0.5 0.5 0 20 force
execute if score @s[tag=!enmity.falling] enmity.age matches 6 run playsound entity.iron_golem.attack neutral @a[distance=0..] ~ ~ ~ 2 1 0