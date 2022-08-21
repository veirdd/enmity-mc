tag @s add enmity.this
summon marker ~ ~ ~ {Tags:["enmity.netherite_digger"]}
execute as @e[type=marker,tag=enmity.netherite_digger] run function enmity:items/usable/netherite_digger/raycast
kill @e[type=marker,tag=enmity.netherite_digger]
tag @s remove enmity.this