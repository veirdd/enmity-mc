execute if predicate enmity:entity/is_sneaking unless score @s enmity.sneaking_time matches 8.. run scoreboard players add @s enmity.sneaking_time 1
execute unless predicate enmity:entity/is_sneaking if score @s enmity.sneaking_time matches 1.. run scoreboard players remove @s enmity.sneaking_time 1
execute if score @s enmity.sneaking_time matches 5.. if entity @s[nbt={OnGround:1b}] run particle composter ~ ~0.1 ~ 0.2 0.1 0.2 0 1
execute unless predicate enmity:entity/is_sneaking if score @s enmity.sneaking_time matches 5.. run effect give @s jump_boost 1 7 true
execute if score @s enmity.sneaking_time matches 0 run effect clear @s jump_boost
execute if score @s enmity.jump matches 1 run effect clear @s jump_boost