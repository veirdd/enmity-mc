summon item ~ ~ ~ {Item:{id:"minecraft:soul_sand",Count:4b}}
summon item ~ ~ ~ {Item:{id:"minecraft:wither_skeleton_skull",Count:3b}}
function enmity:entities/mobs/wither/woosh
tag @s add enmity.despawning
data merge entity @s {DeathLootTable:"minecraft:empty"}
execute if entity @s[y=-64,dy=1000] run tellraw @a {"text":"The Wither is already summoned.","color":"gray"}
tp ~ -1000 ~
kill @s