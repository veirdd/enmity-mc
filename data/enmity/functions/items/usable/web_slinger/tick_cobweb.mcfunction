tag @s add enmity.this
execute positioned ~-0.25 ~-0.25 ~-0.25 as @e[type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id positioned ~-0.49 ~-0.49 ~-0.49 if entity @s[dx=0] run effect give @s slowness 1 4 true
tag @s remove enmity.this
execute if score @s enmity.age matches 100.. run kill @s