scoreboard players add @s enmity.raycast 1
execute if score @s enmity.raycast matches 64.. run scoreboard players set @s enmity.raycast 0
tag @e[type=!#enmity:not_living,tag=!enmity.projectile,tag=!enmity.boss,distance=..1,limit=1,sort=nearest,tag=!enmity.this] add enmity.hit
execute if entity @e[type=!#enmity:not_living,tag=enmity.hit] run function enmity:items/usable/subjugator/raycast_successful
execute if score @s enmity.raycast matches 1.. positioned ^ ^ ^0.25 run function enmity:items/usable/subjugator/raycast