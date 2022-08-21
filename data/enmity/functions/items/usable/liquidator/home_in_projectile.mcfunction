execute as @e[type=!#enmity:not_living,tag=enmity.homing_target,limit=1,sort=nearest] at @s anchored eyes positioned ^ ^ ^ run summon marker ~ ~-1.7 ~ {Tags:["enmity.direction_anchor"]}
execute positioned ^ ^ ^1 facing entity @e[type=marker,tag=enmity.direction_anchor] feet positioned ^ ^ ^0.2 run tp @e[type=marker,tag=enmity.direction_anchor] ~ ~ ~
tp @s ~ ~ ~ facing entity @e[type=marker,tag=enmity.direction_anchor,limit=1]
tag @e[type=!#enmity:not_living,tag=enmity.homing_target] remove enmity.homing_target
kill @e[type=marker,tag=enmity.direction_anchor]