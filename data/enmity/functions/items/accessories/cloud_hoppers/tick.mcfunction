execute store result score @s enmity.rotation run data get entity @s Rotation[1] 1
execute store result score @s enmity.math_a run data get entity @s Motion[1] 10
execute if predicate enmity:entity/is_sprinting if entity @s[predicate=enmity:entity/is_on_ground] run particle dust 0 1 1 1 ~ ~0.2 ~ 0.2 0.2 0.2 0 3 force
effect clear @s levitation
effect clear @s slow_falling
scoreboard players set @s[predicate=enmity:entity/is_on_ground] enmity.flight 8
execute if score @s enmity.flight matches 1.. if predicate enmity:entity/is_sneaking if score @s enmity.midair_time matches 6.. run function enmity:items/accessories/cloud_hoppers/flight
execute if score @s enmity.flight matches 1.. if predicate enmity:entity/is_sneaking unless score @s enmity.midair_time matches 6.. if score @s enmity.math_a matches 1.. run function enmity:items/accessories/cloud_hoppers/flight
execute if score @s enmity.flight matches 1..7 if data entity @s {OnGround:0b} run function enmity:items/accessories/cloud_hoppers/flight
execute if score @s enmity.rotation matches 89.. run tag @s remove enmity.flying
execute if entity @s[tag=enmity.flying] run function enmity:items/accessories/cloud_hoppers/passive_flight
execute if entity @s[predicate=enmity:entity/is_on_ground] run tag @s remove enmity.flying
execute if data entity @s {FallFlying:1b} run tag @s remove enmity.flying