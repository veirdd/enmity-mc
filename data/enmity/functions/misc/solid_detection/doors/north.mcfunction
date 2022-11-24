execute if block ~ ~ ~ #minecraft:doors[open=false] if score @s enmity.math_b matches 80.. run tag @s add enmity.in_solid
execute if block ~ ~ ~ #minecraft:doors[open=true,hinge=left] if score @s enmity.math_a matches ..20 run tag @s add enmity.in_solid
execute if block ~ ~ ~ #minecraft:doors[open=true,hinge=right] if score @s enmity.math_a matches 80.. run tag @s add enmity.in_solid