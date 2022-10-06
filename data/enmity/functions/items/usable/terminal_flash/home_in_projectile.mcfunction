execute positioned ^ ^ ^1 facing entity @e[type=!#enmity:not_living,tag=enmity.homing_target,limit=1,sort=nearest] eyes positioned ^ ^ ^0.1 run summon marker ~ ~ ~ {Tags:["enmity.direction_anchor"]}
tp @s ~ ~ ~ facing entity @e[type=marker,tag=enmity.direction_anchor,limit=1]
tag @e[type=!#enmity:not_living,tag=enmity.homing_target] remove enmity.homing_target
kill @e[type=marker,tag=enmity.direction_anchor]