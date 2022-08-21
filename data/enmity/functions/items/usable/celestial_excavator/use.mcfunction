tag @s add enmity.this
summon marker ~ ~ ~ {Tags:["enmity.celestial_excavator"]}
execute as @e[type=marker,tag=enmity.celestial_excavator] run function enmity:items/usable/celestial_excavator/raycast
kill @e[type=marker,tag=enmity.celestial_excavator]
tag @s remove enmity.this