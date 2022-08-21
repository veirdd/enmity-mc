tag @s add enmity.despawning
data merge entity @s {DeathLootTable:"minecraft:empty"}
tellraw @a {"text":"The Elder Guardian is already summoned.","color":"gray"}
tp ~ -1000 ~
kill @s
kill @e[type=marker,tag=enmity.elder_anchor]
kill @e[type=marker,tag=enmity.elder_dash_anchor]
kill @e[type=guardian,tag=enmity.elder_minion]