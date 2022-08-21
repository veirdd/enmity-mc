tag @s add enmity.this
execute as @e[type=arrow,distance=..8,tag=!enmity.projectile,nbt={inGround:0b}] at @s run function enmity:items/accessories/repelling_stone/tick_arrow
execute as @e[type=spectral_arrow,distance=..8,tag=!enmity.projectile,nbt={inGround:0b}] at @s run function enmity:items/accessories/repelling_stone/tick_arrow
tag @s remove enmity.this