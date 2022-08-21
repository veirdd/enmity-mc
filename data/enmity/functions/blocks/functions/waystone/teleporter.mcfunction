execute store result entity @s Pos[0] double 1 run scoreboard players get @s enmity.posx
execute store result entity @s Pos[1] double 1 run scoreboard players get @s enmity.posy
execute store result entity @s Pos[2] double 1 run scoreboard players get @s enmity.posz
execute at @p[tag=enmity.this] positioned as @s run tp @p[tag=enmity.this] ~ ~ ~
tp @e[type=marker,tag=enmity.setup,limit=1]