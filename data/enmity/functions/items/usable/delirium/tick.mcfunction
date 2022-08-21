playsound entity.wither.shoot neutral @a[distance=0..] ~ ~ ~ 0.5 1.5 0
playsound entity.wither.ambient neutral @a[distance=0..] ~ ~ ~ 0.5 2 0
particle sweep_attack ~ ~ ~ 1 1 1 0 5 force
particle smoke ~ ~ ~ 1 1 1 0.1 15 force
particle reverse_portal ~ ~ ~ 1 1 1 0.1 10 force
summon marker ~ ~ ~ {Tags:["enmity.this"]}
tag @s add enmity.this
execute as @e[type=!#enmity:not_living,distance=..12,tag=!enmity.projectile,tag=!enmity.boss,tag=!enmity.target_dummy,tag=!enmity.this] at @s facing entity @e[type=marker,tag=enmity.this,limit=1] eyes run tp @s ^ ^ ^0.4
tag @s remove enmity.this
kill @e[type=marker,tag=enmity.this]
scoreboard players set @s enmity.dmg 29
scoreboard players operation @s enmity.dmg += @s enmity.dmg_bst
execute as @e[type=!#enmity:not_living,tag=!enmity.projectile,dx=0] run tag @s add enmity.hit
execute positioned ~ ~-1 ~ as @e[type=!#enmity:not_living,tag=!enmity.projectile,dx=0] run tag @s add enmity.hit
execute positioned ~-1 ~ ~ as @e[type=!#enmity:not_living,tag=!enmity.projectile,dx=0] run tag @s add enmity.hit
execute positioned ~-1 ~-1 ~ as @e[type=!#enmity:not_living,tag=!enmity.projectile,dx=0] run tag @s add enmity.hit
execute positioned ~-1 ~ ~-1 as @e[type=!#enmity:not_living,tag=!enmity.projectile,dx=0] run tag @s add enmity.hit
execute positioned ~-1 ~-1 ~-1 as @e[type=!#enmity:not_living,tag=!enmity.projectile,dx=0] run tag @s add enmity.hit
execute positioned ~ ~ ~-1 as @e[type=!#enmity:not_living,tag=!enmity.projectile,dx=0] run tag @s add enmity.hit
execute positioned ~ ~-1 ~-1 as @e[type=!#enmity:not_living,tag=!enmity.projectile,dx=0] run tag @s add enmity.hit
execute positioned ^ ^ ^-1.2 positioned ~-0.25 ~-0.25 ~-0.25 as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0] positioned ~-0.49 ~-0.49 ~-0.49 if entity @s[dx=0] run tag @s add enmity.hit
execute positioned ^ ^ ^-2 positioned ~-0.25 ~-0.25 ~-0.25 as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0] positioned ~-0.49 ~-0.49 ~-0.49 if entity @s[dx=0] run tag @s add enmity.hit
tag @s remove enmity.hit
execute if entity @e[type=!#enmity:not_living,tag=enmity.hit] run function enmity:items/usable/delirium/damage_slash
scoreboard players reset @s enmity.dmg
execute if score @s enmity.cooldown matches 0 run tag @s remove enmity.delirium
execute unless predicate enmity:entity/is_sneaking run tag @s remove enmity.delirium