scoreboard players set @s enmity.math_a 1
scoreboard players add @s enmity.value 1
execute store result score @s enmity.math_b run loot spawn ~ ~ ~ loot enmity:random_20
execute if score @s enmity.math_b matches 1 run summon zombie ~ ~ ~ {PersistenceRequired:1b}
execute if score @s enmity.math_b matches 2 run summon zombie ~ ~ ~ {PersistenceRequired:1b}
execute if score @s enmity.math_b matches 3 run summon zombie ~ ~ ~ {PersistenceRequired:1b}
execute if score @s enmity.math_b matches 4 run summon zombie ~ ~ ~ {PersistenceRequired:1b}
execute if score @s enmity.math_b matches 5 run summon zombie ~ ~ ~ {PersistenceRequired:1b}
execute if score @s enmity.math_b matches 6 run summon zombie ~ ~ ~ {PersistenceRequired:1b}
execute if score @s enmity.math_b matches 7 run summon zombie ~ ~ ~ {PersistenceRequired:1b}
execute if score @s enmity.math_b matches 8 run summon skeleton ~ ~ ~ {PersistenceRequired:1b}
execute if score @s enmity.math_b matches 9 run summon skeleton ~ ~ ~ {PersistenceRequired:1b}
execute if score @s enmity.math_b matches 10 run summon skeleton ~ ~ ~ {PersistenceRequired:1b}
execute if score @s enmity.math_b matches 11 run summon skeleton ~ ~ ~ {PersistenceRequired:1b}
execute if score @s enmity.math_b matches 12 run summon skeleton ~ ~ ~ {PersistenceRequired:1b}
execute if score @s enmity.math_b matches 16 run summon cave_spider ~ ~ ~ {PersistenceRequired:1b}
execute if score @s enmity.math_b matches 17 run summon cave_spider ~ ~ ~ {PersistenceRequired:1b}
execute if score @s enmity.math_b matches 18 run summon cave_spider ~ ~ ~ {PersistenceRequired:1b}
execute if score @s enmity.math_b matches 19 run summon cave_spider ~ ~ ~ {PersistenceRequired:1b}
execute if score @s enmity.math_b matches 13 run summon cave_spider ~ ~ ~ {PersistenceRequired:1b}
execute if score @s enmity.math_b matches 14 run summon spider ~ ~ ~ {PersistenceRequired:1b}
execute if score @s enmity.math_b matches 15 run summon spider ~ ~ ~ {PersistenceRequired:1b}
execute if score @s enmity.math_b matches 20 run summon witch ~ ~ ~ {PersistenceRequired:1b}