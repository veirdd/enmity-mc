execute store result score @s enmity.math_a run data get entity @s Motion[1] 10
execute if predicate enmity:entity/is_sprinting if predicate enmity:entity/is_on_ground run particle dust 0.4 0.3 1 1 ~ ~0.2 ~ 0.2 0.2 0.2 0 3 force
effect clear @s levitation
execute if entity @s[tag=enmity.flying] run function enmity:items/accessories/celestial_tracers/passive_flight
execute if entity @s[x_rotation=-90..30] if score @s enmity.midair_time matches 5.. if predicate enmity:entity/is_sneaking run function enmity:items/accessories/celestial_tracers/fly_up
execute if entity @s[x_rotation=-90..30] unless score @s enmity.midair_time matches 5.. if score @s enmity.math_a matches 1.. if predicate enmity:entity/is_sneaking run function enmity:items/accessories/celestial_tracers/fly_up
execute if entity @s[x_rotation=31..89] if score @s enmity.midair_time matches 5.. if predicate enmity:entity/is_sneaking run function enmity:items/accessories/celestial_tracers/fly_down
execute if entity @s[x_rotation=89..90] run tag @s remove enmity.flying
execute if predicate enmity:entity/is_on_ground run tag @s remove enmity.flying
execute if data entity @s {FallFlying:1b} run tag @s remove enmity.flying
execute if score @s[tag=!enmity.flying] enmity.math_a matches 10.. run tp @s ~ ~ ~
execute if entity @s[tag=enmity.flying,nbt={HurtTime:9s}] run tp @s ~ ~ ~
execute if entity @s[tag=enmity.flying,nbt={HurtTime:10s}] run tp @s ~ ~ ~