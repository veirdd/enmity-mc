execute if score @s enmity.age matches 10.. unless entity @e[type=guardian,tag=enmity.elder_minion] run function enmity:entities/mobs/elder_guardian/change_phase
execute as @e[type=marker,tag=enmity.elder_summon_anchor] at @s run function enmity:entities/mobs/elder_guardian/phases/summon/tick_anchor
execute as @e[type=guardian,tag=enmity.elder_minion] if score @s enmity.age matches 800.. run kill @s
scoreboard players add @e[type=guardian,tag=enmity.elder_minion] enmity.age 1
execute as @e[type=guardian,tag=enmity.elder_minion] if predicate enmity:random/random_0.025 at @s unless entity @e[type=marker,tag=enmity.elder_bolt,distance=..10] unless entity @p[tag=enmity.elder_target,distance=..15] run function enmity:entities/mobs/elder_guardian/projectiles/minion_bolt/summon
execute if score @s enmity.age matches 10 at @e[type=guardian,tag=enmity.elder_minion] run particle dust 0.2 0.6 0.6 2 ~ ~0.5 ~ 0.5 0.5 0.5 0 100 force
execute if score @s enmity.age matches 10 at @e[type=guardian,tag=enmity.elder_minion] run particle end_rod ~ ~0.5 ~ 0.1 0.1 0.1 0.3 30 force