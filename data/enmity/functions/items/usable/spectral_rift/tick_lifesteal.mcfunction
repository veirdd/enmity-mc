tag @s add enmity.this
execute as @a if score @s enmity.player_id = @e[type=marker,tag=enmity.this,limit=1] enmity.player_id run tag @s add enmity.this
tp @s ^ ^ ^1 facing entity @p[tag=enmity.this] eyes
particle instant_effect ~ ~ ~ 0 0 0 0 1 force
particle instant_effect ^ ^ ^0.5 0 0 0 0 1 force
execute if score @s enmity.age matches 20.. run function enmity:items/usable/spectral_rift/die_lifesteal
execute positioned ~-0.25 ~-0.25 ~-0.25 as @p[tag=!enmity.give_instant_health,tag=!enmity.update_health,tag=enmity.this,dx=0] positioned ~-0.49 ~-0.49 ~-0.49 if entity @s[dx=0] run tag @s add enmity.hit
execute positioned ^ ^ ^0.5 positioned ~-0.25 ~-0.25 ~-0.25 as @p[tag=!enmity.give_instant_health,tag=!enmity.update_health,tag=enmity.this,dx=0] positioned ~-0.49 ~-0.49 ~-0.49 if entity @s[dx=0] run tag @s add enmity.hit
execute if entity @a[tag=enmity.hit] run function enmity:items/usable/spectral_rift/heal_lifesteal
tag @a[tag=enmity.this] remove enmity.this
tag @s remove enmity.this