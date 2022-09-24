execute store result score @s enmity.math_a if entity @e[type=drowned,nbt=!{PersistenceRequired:1b}]
execute if score @s enmity.math_a matches ..6 run summon drowned
execute if score @s enmity.math_a matches 7..12 unless entity @e[type=drowned,nbt=!{PersistenceRequired:1b},distance=..32] run summon drowned
tp @s ~ -1000 ~
kill @s