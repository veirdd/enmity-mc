execute unless score @s enmity.phase matches 4 unless entity @e[type=marker,tag=enmity.elder_anchor,distance=..0.1] run tp @s @e[type=marker,limit=1,tag=enmity.elder_anchor]
tag @a remove enmity.elder_target
tag @r[distance=..48,gamemode=!spectator,scores={enmity.age=600..}] add enmity.elder_target
execute unless entity @p[distance=..48,gamemode=!spectator,scores={enmity.age=600..}] run function enmity:entities/mobs/elder_guardian/despawning/despawn_failed
bossbar set enmity.elder_guardian players @a[distance=..64]
execute store result score @s enmity.math_a run data get entity @s Health 1
scoreboard players operation @s enmity.math_a += %const_1 enmity.value
execute store result entity @s Health float 1 run scoreboard players get @s enmity.math_a
execute unless score @s enmity.phase matches 4 run fill ~1 ~0.5 ~1 ~-1 ~1.5 ~-1 air destroy
kill @e[type=minecart,distance=..0.5]
kill @e[type=boat,distance=..0.5]
execute if score @s enmity.phase matches 2 if score @s enmity.age matches 40..200 run function enmity:entities/mobs/elder_guardian/phases/geysers/20_tick
execute if score @s enmity.phase matches 1 if score @s enmity.age matches 280.. run function enmity:entities/mobs/elder_guardian/change_phase
execute if score @s enmity.phase matches 2 if score @s enmity.age matches 260.. run function enmity:entities/mobs/elder_guardian/change_phase
execute if score @s enmity.phase matches 3 if score @s enmity.age matches 80.. run function enmity:entities/mobs/elder_guardian/change_phase
execute if score @s enmity.phase matches 0 if score @s enmity.age matches 100.. run function enmity:entities/mobs/elder_guardian/change_phase