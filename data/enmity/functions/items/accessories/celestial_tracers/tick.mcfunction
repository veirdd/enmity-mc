execute store result score @s enmity.rotation run data get entity @s Rotation[1] 1
execute if predicate enmity:entity/is_sprinting if data entity @s {OnGround:1b} run particle dust 0.4 0.3 1 1 ~ ~0.2 ~ 0.2 0.2 0.2 0 3 force
effect clear @s levitation
effect clear @s slow_falling
execute unless score @s enmity.rotation matches 89.. if predicate enmity:entity/is_sneaking if data entity @s {OnGround:0b} run function enmity:items/accessories/celestial_tracers/flight
execute if score @s enmity.rotation matches 89.. run tag @s remove enmity.flying
execute if entity @s[tag=enmity.flying] run function enmity:items/accessories/celestial_tracers/passive_flight
execute if data entity @s {OnGround:1b} run tag @s remove enmity.flying
execute if data entity @s {FallFlying:1b} run tag @s remove enmity.flying