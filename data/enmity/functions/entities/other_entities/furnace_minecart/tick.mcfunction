execute as @e[type=item,distance=..1.5,nbt={Item:{id:"minecraft:coal"},PickupDelay:0s},limit=1] run tag @s add enmity.potential_fuel
execute unless entity @e[type=item,tag=enmity.potential_fuel] as @e[type=item,distance=..1,nbt={Item:{id:"minecraft:charcoal"}},limit=1] run tag @s add enmity.potential_fuel
execute if entity @e[type=item,tag=enmity.potential_fuel] run function enmity:entities/other_entities/furnace_minecart/consume_fuel
execute as @e[type=item,distance=..1.5,nbt={Item:{id:"minecraft:rail"},PickupDelay:0s},limit=1] run tag @s add enmity.potential_rail
execute if entity @e[type=item,tag=enmity.potential_rail] run function enmity:entities/other_entities/furnace_minecart/consume_rail