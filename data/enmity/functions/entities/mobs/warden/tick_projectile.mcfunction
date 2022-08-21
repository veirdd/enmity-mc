tag @s add enmity.this
execute if score @s enmity.age matches 15.. positioned ~ ~-1 ~ as @e[type=player,distance=..20,gamemode=!spectator] run tag @s add enmity.homing_target
execute if score %difficulty enmity.value matches 2 facing entity @e[tag=enmity.homing_target,limit=1,sort=nearest] eyes run tp @s ^ ^ ^0.5
execute if score %difficulty enmity.value matches 1 facing entity @e[tag=enmity.homing_target,limit=1,sort=nearest] eyes if block ^ ^ ^0.4 #enmity:not_solid run tp @s ^ ^ ^0.4
tag @e[tag=enmity.homing_target] remove enmity.homing_target
playsound block.sculk_sensor.clicking neutral @a[distance=0..] ~ ~ ~ 0.5 2 0
particle sculk_charge_pop ~ ~ ~ 0 0 0 0 2 force
execute as @e[scores={enmity.iframes=0},type=!warden,type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run tag @s add enmity.hit
execute positioned ^ ^ ^0.2 as @e[scores={enmity.iframes=0},type=!warden,type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run tag @s add enmity.hit
execute if entity @e[type=!#enmity:not_living,tag=enmity.hit] run function enmity:entities/mobs/warden/damage_projectile
execute if score @s enmity.age matches 80.. run function enmity:entities/mobs/warden/die_projectile
tag @s remove enmity.this