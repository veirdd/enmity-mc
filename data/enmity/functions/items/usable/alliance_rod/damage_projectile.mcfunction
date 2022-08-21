effect give @e[type=!#enmity:not_living,tag=!enmity.invulnerable,tag=enmity.hit,type=!player,limit=1] wither 1 1 true
execute as @e[type=!#enmity:not_living,tag=!enmity.invulnerable,tag=enmity.hit,type=!player,limit=1] store result score @s enmity.math_a run data get entity @s Health
scoreboard players operation @e[type=!#enmity:not_living,tag=!enmity.invulnerable,tag=enmity.hit,limit=1] enmity.math_b = @s enmity.dmg
execute as @e[type=!#enmity:not_living,tag=!enmity.invulnerable,tag=enmity.hit,limit=1] run scoreboard players operation @s enmity.math_b -= @s enmity.dmg_rdc
execute as @e[type=!#enmity:not_living,tag=!enmity.invulnerable,tag=enmity.hit,type=!player,limit=1] at @s run function enmity:utility/damage_indicators/show
execute as @a[tag=!enmity.invulnerable,tag=enmity.hit,gamemode=!creative,limit=1] at @s run function enmity:utility/damage_indicators/show
execute as @e[type=!#enmity:not_living,tag=!enmity.invulnerable,tag=enmity.hit,type=!player,type=!ender_dragon,limit=1] if score @s enmity.math_a <= @s enmity.math_b run kill @s
execute as @e[type=!#enmity:not_living,tag=!enmity.invulnerable,tag=enmity.hit,type=!player,limit=1] if score @s enmity.math_b matches ..0 run scoreboard players set @s enmity.math_b 1
execute as @e[type=!#enmity:not_living,tag=!enmity.invulnerable,tag=enmity.hit,type=!player,limit=1] run scoreboard players operation @s enmity.math_a -= @s enmity.math_b
execute as @e[type=!#enmity:not_living,tag=!enmity.invulnerable,tag=enmity.hit,type=!player,limit=1] store result entity @s Health float 1 run scoreboard players get @s enmity.math_a
execute as @a[tag=!enmity.invulnerable,tag=enmity.hit,gamemode=!creative,tag=!enmity.update_health] run function enmity:utility/health_modification/request
data merge entity @e[type=#enmity:alliance_susceptible,tag=!enmity.custom_mob,tag=enmity.hit,limit=1] {Attributes:[{Name:"generic.follow_range",Base:1}]}
effect give @e[type=#enmity:alliance_susceptible,tag=!enmity.custom_mob,tag=enmity.hit,limit=1,type=!creeper] slowness 1000000 2 true
tag @e[type=#enmity:alliance_susceptible,tag=!enmity.custom_mob,tag=enmity.hit,limit=1] add enmity.hit_by_alliance
tag @e[type=!#enmity:not_living,tag=enmity.hit] remove enmity.hit
function enmity:items/usable/alliance_rod/die_projectile