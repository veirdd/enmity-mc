tag @s add enmity.this
summon marker ~ ~ ~ {Tags:["enmity.ethereal_excavator"]}
execute as @e[type=marker,tag=enmity.ethereal_excavator] run function enmity:items/usable/ethereal_excavator/raycast
kill @e[type=marker,tag=enmity.ethereal_excavator]
tag @s remove enmity.this