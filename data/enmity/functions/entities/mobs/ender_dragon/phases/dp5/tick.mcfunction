execute as @p[tag=enmity.dragon_target] at @s facing entity @e[type=ender_dragon,limit=1] feet run summon marker ^ ^ ^100 {Tags:["enmity.dragon_anchor"]}
tp @s ~ ~ ~ facing entity @e[type=marker,tag=enmity.dragon_anchor,limit=1] feet
kill @e[type=marker,tag=enmity.dragon_anchor]