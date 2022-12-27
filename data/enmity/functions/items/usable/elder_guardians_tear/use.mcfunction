scoreboard players add @s enmity.cooldown 40
execute unless predicate enmity:environment/in_overworld run playsound minecraft:block.fire.extinguish master @s ~ ~ ~ 2 1.2 0
execute if predicate enmity:environment/in_overworld run playsound minecraft:entity.generic.swim master @s ~ ~ ~ 2 0.7 0
execute if predicate enmity:environment/in_overworld if predicate enmity:environment/is_raining run weather clear 216000
execute if predicate enmity:environment/in_overworld unless predicate enmity:environment/is_raining run weather rain