execute positioned ^ ^ ^1 facing entity @p[tag=enmity.homing_target] eyes positioned ^ ^ ^0.35 run summon marker ~ ~ ~ {Tags:["enmity.direction_anchor"]}
tp @s ~ ~ ~ facing entity @e[type=marker,tag=enmity.direction_anchor,limit=1]
tag @a[tag=enmity.homing_target] remove enmity.homing_target
kill @e[type=marker,tag=enmity.direction_anchor]