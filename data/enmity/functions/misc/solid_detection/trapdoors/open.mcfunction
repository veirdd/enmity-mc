execute if block ~ ~ ~ #minecraft:trapdoors[facing=north] if score @s enmity.math_c matches 80.. run tag @s add enmity.in_solid
execute if block ~ ~ ~ #minecraft:trapdoors[facing=south] if score @s enmity.math_c matches ..20 run tag @s add enmity.in_solid
execute if block ~ ~ ~ #minecraft:trapdoors[facing=east] if score @s enmity.math_a matches ..20 run tag @s add enmity.in_solid
execute if block ~ ~ ~ #minecraft:trapdoors[facing=west] if score @s enmity.math_a matches 80.. run tag @s add enmity.in_solid