execute if entity @s[nbt={Item:{tag:{Enmity.FloatingItem:1}}}] run data modify entity @s NoGravity set value 1
execute if entity @s[nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",tag:{Enmity:1,CustomModelData:7}}}] run team join enmity.black
execute if entity @s[nbt={Item:{tag:{Enmity.EternalItem:1}}}] run data merge entity @s {Glowing:1,Age:-32768,Invulnerable:1}
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:unbreaking"}] run function enmity:entities/other_entities/items/enchanted_unbreaking/modification
tag @s add enmity.modified