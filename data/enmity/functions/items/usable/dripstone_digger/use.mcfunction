tag @s add enmity.this
summon marker ~ ~ ~ {Tags:["enmity.dripstone_digger"]}
execute as @e[type=marker,tag=enmity.dripstone_digger] run function enmity:items/usable/dripstone_digger/raycast
kill @e[type=marker,tag=enmity.dripstone_digger]
tag @s remove enmity.this