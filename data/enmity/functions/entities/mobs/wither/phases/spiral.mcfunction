tp @e[type=marker,tag=enmity.wither_anchor,limit=1] @s
execute as @e[type=marker,tag=enmity.wither_anchor] at @s run tp @s ~ ~ ~ facing entity @p[tag=enmity.wither_target] feet
execute store result entity @s Rotation[1] float 1 run data get entity @e[type=marker,tag=enmity.wither_anchor,limit=1] Rotation[1]
scoreboard players add @s enmity.rotation 9
execute if score @s enmity.rotation matches 360.. run scoreboard players set @s enmity.rotation 0
execute store result entity @s Rotation[0] float 1 run scoreboard players get @s enmity.rotation
function enmity:entities/mobs/wither/projectiles/wither_skull/summon
function enmity:entities/mobs/wither/projectiles/wither_skull/summon_2
function enmity:entities/mobs/wither/projectiles/wither_skull/summon_3