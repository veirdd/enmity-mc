execute store result score @s enmity.math_a run data get entity @s Motion[1] 10
execute if predicate enmity:entity/is_sprinting if predicate enmity:entity/is_on_ground run particle dust 0.8 0.7 1 1 ~ ~0.2 ~ 0.2 0.2 0.2 0 3 force
effect clear @s levitation
effect clear @s slow_falling
scoreboard players set @s[predicate=enmity:entity/is_on_ground] enmity.flight 40
execute if score @s enmity.flight matches 1.. unless entity @s[x_rotation=89..] if score @s enmity.midair_time matches 6.. if predicate enmity:entity/is_sneaking run function enmity:items/accessories/ethereal_boots/flight
execute if score @s enmity.flight matches 1.. unless entity @s[x_rotation=89..] unless score @s enmity.midair_time matches 6.. if score @s enmity.math_a matches 1.. if predicate enmity:entity/is_sneaking run function enmity:items/accessories/ethereal_boots/flight
execute if entity @s[x_rotation=89..] run tag @s remove enmity.flying
execute if entity @s[tag=enmity.flying] run function enmity:items/accessories/ethereal_boots/passive_flight
execute if predicate enmity:entity/is_on_ground run tag @s remove enmity.flying
execute if data entity @s {FallFlying:1b} run tag @s remove enmity.flying