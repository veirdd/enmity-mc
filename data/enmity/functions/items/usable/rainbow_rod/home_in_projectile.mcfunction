execute positioned ^ ^ ^1 facing entity @e[type=!#enmity:not_living,tag=enmity.homing_target,limit=1,sort=nearest] eyes positioned ^ ^ ^0.5 run summon marker ~ ~ ~ {Tags:["enmity.direction_anchor"]}
tp @s ~ ~ ~ facing entity @e[type=marker,tag=enmity.direction_anchor,limit=1]
kill @e[type=marker,tag=enmity.direction_anchor]