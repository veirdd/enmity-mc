execute at @e[tag=enmity.hit] if block ~ ~ ~ air run setblock ~ ~ ~ lava[level=14]
tag @e[type=!#enmity:not_living,tag=enmity.hit] remove enmity.hit