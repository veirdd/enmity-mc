function enmity:entities/mobs/wither/woosh
tag @s add enmity.despawning
data merge entity @s {DeathLootTable:"minecraft:empty"}
execute if entity @s[y=-64,dy=10000] run tellraw @a {"text":"The Wither has failed to be beaten and disappears...","color":"gray"}
tp ~ -1000 ~
kill @s