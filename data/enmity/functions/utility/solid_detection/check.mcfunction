execute unless block ~ ~ ~ #enmity:not_solid_detection run tag @s add enmity.in_solid
execute if block ~ ~ ~ #enmity:partial run function enmity:utility/solid_detection/partial
execute as @e[type=#enmity:boats,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run tag @e[type=#enmity:used_projectiles,tag=enmity.this] add enmity.in_solid