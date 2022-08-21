tag @p[distance=..8,nbt={SelectedItem:{id:"minecraft:rabbit_foot"}}] add enmity.tamer
tag @e[type=item,nbt={Item:{id:"minecraft:rabbit_foot"}},distance=..8,limit=1,sort=nearest] add enmity.treat
execute if entity @a[tag=enmity.tamer] unless entity @e[type=item,tag=enmity.treat,distance=..8] run function enmity:entities/mobs/harpy/taming/tame_ready
execute if entity @e[type=item,tag=enmity.treat] run function enmity:entities/mobs/harpy/taming/eat_treat
tag @a[tag=enmity.tamer] remove enmity.tamer
tag @e[type=item,tag=enmity.treat] remove enmity.treat