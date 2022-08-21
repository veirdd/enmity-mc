execute if block ~ ~ ~ air run function enmity:entities/other_entities/tower_dungeon/spawner/die
execute if score @s enmity.value matches 20.. run function enmity:entities/other_entities/tower_dungeon/spawner/die
tag @e[type=#enmity:enemies,distance=..5] add enmity.this
execute positioned ~3 ~ ~ run tag @e[type=#enmity:enemies,distance=..5] add enmity.this
execute positioned ~ ~ ~3 run tag @e[type=#enmity:enemies,distance=..5] add enmity.this
execute positioned ~-3 ~ ~ run tag @e[type=#enmity:enemies,distance=..5] add enmity.this
execute positioned ~ ~ ~-3 run tag @e[type=#enmity:enemies,distance=..5] add enmity.this
execute store result score @s enmity.math_a if entity @e[type=#enmity:enemies,tag=enmity.this]
tag @e[type=#enmity:enemies,tag=enmity.this] remove enmity.this
execute if entity @s if score @s enmity.math_a matches ..5 run function enmity:entities/other_entities/tower_dungeon/spawner/spawn_check
execute if entity @s run effect give @a[distance=..16,gamemode=!creative,gamemode=!spectator] mining_fatigue 10 1