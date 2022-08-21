kill @e[type=marker,tag=enmity.wither_head]
kill @e[type=marker,tag=enmity.wither_anchor]
tellraw @a {"text":"The Wither has been defeated.","color":"gray"}
execute if score %hardmode enmity.value matches 0 run tellraw @a {"text":"Evil creatures have been infused and empowered by the soul of the Wither.","color":"gray"}
scoreboard players set %hardmode enmity.value 1
kill @s