execute if data entity @s {OnGround:1b} run scoreboard players set @s enmity.flight 8
effect clear @s levitation
execute if predicate enmity:entity/is_sneaking if score @s enmity.flight matches 8 if data entity @s {OnGround:0b} run particle cloud ~ ~ ~ 0.5 0 0.5 0 20 force
execute if predicate enmity:entity/is_sneaking if score @s enmity.flight matches 8 if data entity @s {OnGround:0b} run function enmity:items/accessories/cloud_in_a_balloon/flight
execute if score @s enmity.flight matches 1..7 if data entity @s {OnGround:0b} run function enmity:items/accessories/cloud_in_a_balloon/flight