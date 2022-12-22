execute if score @s enmity.cooldown matches 1.. run scoreboard players remove @s enmity.cooldown 1
execute if score @s enmity.cooldown matches 0 if predicate enmity:random/random_0.25 if entity @p[distance=..12,gamemode=!creative,gamemode=!spectator] run function enmity:entities/mobs/visage/check_obstruction
execute if score @s enmity.idle_cd matches ..0 run function enmity:entities/mobs/visage/ambience
scoreboard players remove @s enmity.idle_cd 10
execute unless entity @a[gamemode=!creative,gamemode=!spectator,distance=..20] if predicate enmity:random/random_0.1 run function enmity:entities/mobs/visage/movement