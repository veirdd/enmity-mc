execute if score @s enmity.cooldown matches 0 if predicate enmity:random/random_0.25 at @s if entity @p[distance=..32,gamemode=!creative,gamemode=!spectator] anchored eyes run function enmity:entities/mobs/flame_spewer/check_obstruction
execute if score @s enmity.cooldown matches 1.. run scoreboard players remove @s enmity.cooldown 1
execute if block ~ ~ ~ lava run attribute @s generic.movement_speed base set 0
execute unless block ~ ~ ~ lava run attribute @s generic.movement_speed base set 1.5
execute if score @s enmity.idle_cd matches ..0 run function enmity:entities/mobs/flame_spewer/ambience
scoreboard players remove @s enmity.idle_cd 10