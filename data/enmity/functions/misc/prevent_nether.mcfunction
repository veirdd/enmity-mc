execute store result score @s enmity.math_a run fill ~-0.4 ~-0.1 ~-0.4 ~0.4 ~2 ~0.4 air replace nether_portal
execute if score @s enmity.math_a matches 1.. run tellraw @s {"text":"Prove your worth to access this dimension.","color":"gray"}
execute if score @s enmity.math_a matches 1.. run tellraw @s {"text":"The Giant awaits.","color":"gray"}