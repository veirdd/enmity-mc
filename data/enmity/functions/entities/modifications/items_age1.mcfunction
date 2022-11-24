execute if entity @s[nbt={Item:{tag:{Enmity.FloatingItem:1}}}] run data modify entity @s NoGravity set value 1
execute if entity @s[nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",tag:{Enmity:1,CustomModelData:7}}}] run team join enmity.black
execute if entity @s[nbt={Item:{tag:{Enmity.EternalItem:1}}}] run function enmity:entities/other_entities/items/eternal/modification
execute if data entity @s Item.tag.Enchantments[{id:"minecraft:unbreaking"}] run function enmity:entities/other_entities/items/enchanted_unbreaking/modification
execute if entity @s[nbt={Item:{tag:{Enmity.BossLoot:1}}}] run function enmity:entities/other_entities/items/boss_loot/modification
execute if entity @s[nbt={Item:{id:"minecraft:nether_star"}}] unless entity @s[nbt={Item:{tag:{Enmity.BossLoot:0}}}] run kill @s
execute if entity @s[nbt={Item:{id:"minecraft:firework_star",tag:{Enmity.Type:"crop_xp"}}}] at @s run function enmity:misc/crop_xp
tag @s add enmity.modified