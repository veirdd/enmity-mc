tp @s ~ ~ ~ ~ 0
execute if score @s enmity.rotation matches 179 run scoreboard players set @s enmity.rotation -180
execute if score @s enmity.rotation matches -1 run scoreboard players set @s enmity.rotation 0
scoreboard players add @s enmity.rotation 1
execute store result entity @s Rotation[0] float 1 run scoreboard players get @s enmity.rotation
execute unless score @e[type=wither,tag=!enmity.phase_2,limit=1] enmity.phase matches 4 if score @e[type=wither,limit=1] enmity.phase matches 2.. run tp @e[type=wither,scores={enmity.age=1..}] ^ ^0.5 ^12 facing entity @a[tag=enmity.wither_target,limit=1] feet
execute unless score @e[type=wither,tag=enmity.phase_2,limit=1] enmity.phase matches 4 if score @e[type=wither,limit=1] enmity.phase matches 2.. run tp @e[type=wither,scores={enmity.age=1..}] ^ ^0.5 ^18 facing entity @a[tag=enmity.wither_target,limit=1] feet
execute if score @e[type=wither,tag=!enmity.phase_2,limit=1] enmity.phase matches 4 if score @e[type=wither,limit=1] enmity.phase matches 2.. run tp @e[type=wither,scores={enmity.age=1..}] ^ ^0.5 ^6 facing entity @a[tag=enmity.wither_target,limit=1] feet
execute if score @e[type=wither,tag=enmity.phase_2,limit=1] enmity.phase matches 4 if score @e[type=wither,limit=1] enmity.phase matches 2.. run tp @e[type=wither,scores={enmity.age=1..}] ^ ^0.5 ^12 facing entity @a[tag=enmity.wither_target,limit=1] feet