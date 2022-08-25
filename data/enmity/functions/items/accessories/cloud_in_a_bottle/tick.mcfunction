execute store result score @s enmity.math_a run data get entity @s Motion[1] 10
execute if predicate enmity:entity/is_on_ground run scoreboard players set @s enmity.flight 5
effect clear @s levitation
execute if predicate enmity:entity/is_sneaking if score @s enmity.flight matches 5 if score @s enmity.midair_time matches 6.. run particle cloud ~ ~ ~ 0.5 0 0.5 0 20 force
execute if predicate enmity:entity/is_sneaking if score @s enmity.flight matches 5 if score @s enmity.midair_time matches 6.. run function enmity:items/accessories/cloud_in_a_bottle/flight
execute if predicate enmity:entity/is_sneaking if score @s enmity.flight matches 5 unless score @s enmity.midair_time matches 6.. if score @s enmity.math_a matches 1.. run particle cloud ~ ~ ~ 0.5 0 0.5 0 20 force
execute if predicate enmity:entity/is_sneaking if score @s enmity.flight matches 5 unless score @s enmity.midair_time matches 6.. if score @s enmity.math_a matches 1.. run function enmity:items/accessories/cloud_in_a_bottle/flight
execute if score @s enmity.flight matches 1..4 run function enmity:items/accessories/cloud_in_a_bottle/flight