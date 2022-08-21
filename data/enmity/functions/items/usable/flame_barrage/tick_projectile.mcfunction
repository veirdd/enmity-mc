execute if score @s enmity.age matches 30.. run kill @s
execute if predicate enmity:random/random_0.25 run particle flame
tag @s add enmity.this
execute positioned ~-0.25 ~-0.25 ~-0.25 as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id positioned ~-0.49 ~-0.49 ~-0.49 if entity @s[dx=0] run tag @s add enmity.hit
execute if entity @e[type=!#enmity:not_living,tag=enmity.hit] run function enmity:items/usable/flame_barrage/damage_projectile
execute if predicate enmity:environment/in_liquid run kill @s
tag @s remove enmity.this
execute if entity @s[scores={enmity.age=3..},nbt={Motion:[0.0d,0.0d,0.0d]}] run kill @s