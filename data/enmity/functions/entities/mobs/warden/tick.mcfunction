execute if score @s enmity.cooldown matches 0.. run scoreboard players remove @s enmity.cooldown 1
execute if score @s enmity.cooldown matches 1.. run execute if predicate enmity:random/random_0.25 run scoreboard players remove @s enmity.cooldown 1
execute if entity @s[nbt={HurtTime:9s}] run function enmity:entities/mobs/warden/enable_shield
execute if score @s enmity.cooldown matches 1..340 if entity @p[distance=..8,gamemode=!spectator] run scoreboard players set @s enmity.cooldown 0
execute if score @s enmity.cooldown matches 0 run function enmity:entities/mobs/warden/disable_shield
execute if score @s enmity.cooldown matches 1.. run particle bubble_pop ~ ~1.5 ~ 0.7 0.7 0.7 0 10 force
execute if score @s enmity.phantasmal_curse matches 1.. run tag @s remove enmity.invulnerable
execute unless entity @a[gamemode=!spectator,distance=..48] run function enmity:misc/despawn