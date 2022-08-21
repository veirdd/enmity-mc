execute unless entity @s[tag=enmity.ridden] run tp @s ~ ~ ~ facing entity @p[gamemode=!spectator,distance=..24] eyes
execute unless entity @s[tag=enmity.ridden] if entity @p[gamemode=!spectator,distance=..24] store result entity @s Rotation[1] float -1 run data get entity @s Rotation[1]
execute unless entity @s[tag=enmity.saddled] unless entity @e[type=phantom,tag=enmity.stop_harpy_saddling] run tag @e[type=item,distance=..2,nbt={Item:{id:"minecraft:saddle"}},limit=1] add enmity.saddle
execute unless entity @s[tag=enmity.saddled] unless entity @e[type=phantom,tag=enmity.stop_harpy_saddling] if entity @e[type=item,tag=enmity.saddle] run function enmity:entities/mobs/harpy/tamed/saddle
execute if entity @s[tag=enmity.saddled] run function enmity:entities/mobs/harpy/tamed/tick_saddled