execute if score @s enmity.idle_cd matches ..0 run function enmity:entities/mobs/giant/ambience
scoreboard players remove @s enmity.idle_cd 20
execute if entity @s[tag=!enmity.despawning,tag=!enmity.rising] unless predicate enmity:environment/is_night run function enmity:entities/mobs/giant/despawning/despawn_daytime
execute store result score @s enmity.hp_dummy run data get entity @s Health
execute if score %difficulty enmity.value matches 1 if score @s enmity.hp_dummy matches ..150 run tag @s add enmity.phase_2
execute if score %difficulty enmity.value matches 1 if score @s enmity.hp_dummy matches 150.. run tag @s remove enmity.phase_2
execute if score %difficulty enmity.value matches 2 if score @s enmity.hp_dummy matches ..262 run tag @s add enmity.phase_2
execute if score %difficulty enmity.value matches 2 if score @s enmity.hp_dummy matches 262.. run tag @s remove enmity.phase_2
execute if entity @a[distance=..24,gamemode=!spectator] run tag @s[tag=!enmity.despawning] remove enmity.invulnerable
execute unless entity @a[distance=..24,gamemode=!spectator] run tag @s[tag=!enmity.despawning] add enmity.invulnerable
execute unless entity @a[distance=..48,gamemode=!spectator,scores={enmity.age=600..}] unless entity @s[tag=enmity.despawning] run function enmity:entities/mobs/giant/despawning/despawn_failed
scoreboard players set @s enmity.math_a 0
execute at @e[type=zombie,tag=enmity.zombie_minion] run scoreboard players add @s enmity.math_a 1
execute if score %difficulty enmity.value matches 1 if score @s enmity.cooldown matches ..0 if score @s enmity.math_a matches ..8 if entity @s[tag=!enmity.despawning,tag=!enmity.rising] run function enmity:entities/mobs/giant/summon_zombies
execute if score %difficulty enmity.value matches 2 if score @s enmity.cooldown matches ..0 if score @s enmity.math_a matches ..12 if entity @s[tag=!enmity.despawning,tag=!enmity.rising] run function enmity:entities/mobs/giant/summon_zombies
execute if score @s enmity.math_a matches 0 if entity @s[tag=!enmity.despawning,tag=!enmity.rising] run function enmity:entities/mobs/giant/summon_zombies
scoreboard players remove @s enmity.cooldown 1
bossbar set enmity.giant players @a[distance=..64]