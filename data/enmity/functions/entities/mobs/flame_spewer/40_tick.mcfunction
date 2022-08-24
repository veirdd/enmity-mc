execute if block ~ ~ ~ lava unless predicate enmity:entity/has_target if predicate enmity:random/random_0.1 run function enmity:entities/mobs/flame_spewer/rotate_randomly
execute if block ~ ~ ~ lava unless predicate enmity:entity/has_target if predicate enmity:random/random_0.1 rotated as @s run summon marker ^ ^ ^-70 {Tags:["enmity.direction_anchor"]}
execute if block ~ ~ ~ lava if entity @e[type=marker,tag=enmity.direction_anchor] run playsound entity.squid.squirt hostile @a[distance=0..] ~ ~ ~ 1 1.4 0
execute if block ~ ~ ~ lava if entity @e[type=marker,tag=enmity.direction_anchor] run function enmity:entities/mobs/flame_spewer/movement
kill @e[type=marker,tag=enmity.direction_anchor]
execute if block ~ ~ ~ lava run scoreboard players set @s enmity.temp 15
execute unless block ~ ~ ~ lava unless score @s enmity.temp matches 0 run scoreboard players remove @s enmity.temp 1
execute unless score @s enmity.temp matches 1.. run effect give @s instant_damage 1 0 true
execute unless entity @p[distance=..32] if predicate enmity:random/random_0.05 run function enmity:utility/despawn
execute unless entity @p[distance=..128] run function enmity:utility/despawn