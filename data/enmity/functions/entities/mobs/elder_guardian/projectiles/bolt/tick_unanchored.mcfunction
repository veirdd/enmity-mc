tp @s ^ ^ ^0.8
particle dust 0 0 1 1 ~ ~ ~ 0 0 0 0 1 force
particle rain ~ ~ ~ 0.08 0.08 0.08 0 5 force
particle rain ^ ^ ^0.4 0.08 0.08 0.08 0 5 force
execute if entity @e[type=marker,tag=enmity.elder_bolt_anchor,limit=1,distance=..1] run tag @s add enmity.anchored
execute if entity @s[scores={enmity.age=160..}] run function enmity:entities/mobs/elder_guardian/projectiles/bolt/die