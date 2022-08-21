tag @p add enmity.rider
data modify entity @s Rotation set from entity @p[tag=enmity.rider] Rotation
execute if entity @p[tag=enmity.rider,nbt={SelectedItem:{id:"minecraft:stick"}}] run function enmity:entities/mobs/harpy/ridden/flight
execute store result entity @s Rotation[1] float -1 run data get entity @s Rotation[1]
tag @a[tag=enmity.rider] remove enmity.rider