execute if score @s enmity.cooldown matches 0 run tag @s remove enmity.dashing
execute if score @s enmity.cooldown matches 0 if score @s enmity.age matches 220.. run function enmity:entities/mobs/elder_guardian/change_phase
execute if score @s enmity.cooldown matches 0 if score @s enmity.age matches 220.. run playsound entity.enderman.teleport hostile @a[distance=0..] ~ ~ ~ 2 1 0
execute if score %difficulty enmity.value matches 1 if score @s enmity.cooldown matches 0 run scoreboard players set @s enmity.cooldown 10
execute if score %difficulty enmity.value matches 2 if score @s enmity.cooldown matches 0 run scoreboard players set @s enmity.cooldown 5
particle rain ~ ~1 ~ 0.6 0.6 0.6 0 30 force
particle dripping_water ~ ~1 ~ 0.2 0.2 0.2 0 15 force
execute if score %difficulty enmity.value matches 2 at @s facing entity @e[type=marker,tag=enmity.elder_dash_anchor,limit=1] feet run summon marker ^ ^ ^1.5 {Tags:["enmity.stupid_glitch_workaround"]}
execute if score %difficulty enmity.value matches 1 at @s facing entity @e[type=marker,tag=enmity.elder_dash_anchor,limit=1] feet run summon marker ^ ^ ^1.2 {Tags:["enmity.stupid_glitch_workaround"]}
execute store result entity @e[type=marker,tag=enmity.stupid_glitch_workaround,limit=1] Pos[1] double 1 run data get entity @p[tag=enmity.elder_target] Pos[1] 1
execute as @e[type=marker,tag=enmity.stupid_glitch_workaround,limit=1] at @s run tp @e[type=elder_guardian,limit=1] ~ ~ ~ facing entity @p
kill @e[type=marker,tag=enmity.stupid_glitch_workaround,limit=1]
tag @s add enmity.this
execute as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id run tag @s add enmity.hit
execute positioned ~ ~-1 ~ as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id run tag @s add enmity.hit
execute positioned ~-1 ~ ~ as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id run tag @s add enmity.hit
execute positioned ~-1 ~-1 ~ as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id run tag @s add enmity.hit
execute positioned ~-1 ~ ~-1 as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id run tag @s add enmity.hit
execute positioned ~-1 ~-1 ~-1 as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id run tag @s add enmity.hit
execute positioned ~ ~ ~-1 as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id run tag @s add enmity.hit
execute positioned ~ ~-1 ~-1 as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id run tag @s add enmity.hit
execute if entity @e[type=!#enmity:not_living,tag=enmity.hit] run function enmity:entities/mobs/elder_guardian/phases/dashes/damage
tag @s remove enmity.this