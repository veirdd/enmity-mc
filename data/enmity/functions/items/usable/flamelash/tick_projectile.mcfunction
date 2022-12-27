tag @s add enmity.this
function enmity:misc/solid_detection/check
execute positioned ^ ^ ^0.5 run function enmity:misc/solid_detection/check
execute if entity @s[tag=enmity.in_solid] run function enmity:items/usable/flamelash/die_projectile
playsound block.fire.extinguish neutral @a[distance=0..] ~ ~ ~ 0.5 2 0
tp @s ^ ^ ^0.75
execute as @a if score @s enmity.player_id = @e[type=marker,tag=enmity.this,limit=1] enmity.player_id run tag @s add enmity.this
execute rotated as @p[tag=enmity.this] positioned ^ ^ ^1 facing entity @p[tag=enmity.this] eyes positioned ^ ^ ^0.7 run summon marker ~ ~ ~ {Tags:["enmity.direction_anchor"]}
execute facing entity @e[type=marker,tag=enmity.direction_anchor] feet run tp @s ^ ^ ^0.75 facing ^ ^ ^1
kill @e[type=marker,tag=enmity.direction_anchor]
tag @a[tag=enmity.this] remove enmity.this
particle flame ^ ^ ^0.325 0 0 0 0 1 force
particle small_flame ~ ~ ~ 0.05 0.05 0.05 0.05 3 force
particle flame ~ ~ ~ 0 0 0 0 1 force
execute positioned ~-0.3 ~-0.3 ~-0.3 as @e[scores={iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0,limit=1] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id positioned ~-0.39 ~-0.39 ~-0.39 if entity @s[dx=0] run tag @s add enmity.hit
execute positioned ^ ^ ^0.5 positioned ~-0.3 ~-0.3 ~-0.3 as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0,limit=1] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id positioned ~-0.39 ~-0.39 ~-0.39 if entity @s[dx=0] run tag @s add enmity.hit
execute if entity @e[type=!#enmity:not_living,tag=enmity.hit] run function enmity:items/usable/flamelash/damage_projectile
execute if score @s enmity.age matches 150.. run function enmity:items/usable/flamelash/die_projectile
execute if score @s enmity.impact_ct matches 2.. run function enmity:items/usable/flamelash/die_projectile
execute if block ~ ~ ~ #enmity:liquid_water run function enmity:items/usable/flamelash/die_projectile
tag @s remove enmity.this