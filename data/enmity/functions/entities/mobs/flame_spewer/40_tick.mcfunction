execute unless predicate enmity:entity/has_target if predicate enmity:random/random_0.25 run function enmity:entities/mobs/flame_spewer/rotate_randomly
execute unless predicate enmity:entity/has_target if predicate enmity:random/random_0.25 rotated as @s run summon marker ^ ^ ^-70 {Tags:["enmity.direction_anchor"]}
execute if entity @e[type=marker,tag=enmity.direction_anchor] run playsound entity.squid.squirt hostile @a[distance=0..] ~ ~ ~ 1 1.4 0
execute if entity @e[type=marker,tag=enmity.direction_anchor] run function enmity:entities/mobs/flame_spewer/movement