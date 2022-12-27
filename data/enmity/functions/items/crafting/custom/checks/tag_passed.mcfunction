scoreboard players set @s enmity.math_a 0
execute if entity @s[nbt={Item:{id:"minecraft:warped_fungus_on_a_stick"}}] store result score @s enmity.math_a run data get entity @s Item.tag.CustomModelData
execute if score @s enmity.math_a matches 8 if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:9,Enmity:1}}}] if entity @e[type=item,distance=..0.5,limit=1,nbt={Item:{id:"minecraft:ghast_tear",Count:1b}}] run function enmity:items/crafting/custom/mana_power_ring
execute if score @s enmity.math_a matches 5 if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:44,Enmity:1}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:ghast_tear",Count:1b}}] run function enmity:items/crafting/custom/cloud_hoppers
execute if score @s enmity.math_a matches 86 if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:phantom_membrane",Count:8b}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:4b,tag:{CustomModelData:8,Enmity:1}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:4b,tag:{CustomModelData:9,Enmity:1}}}] run function enmity:items/crafting/custom/ethereal_boots
execute if score @s enmity.math_a matches 1 if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:oak_sapling",Count:1b}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:birch_sapling",Count:1b}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:spruce_sapling",Count:1b}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:jungle_sapling",Count:1b}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:acacia_sapling",Count:1b}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:dark_oak_sapling",Count:1b}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:mangrove_propagule",Count:1b}}] run function enmity:items/crafting/custom/staff_of_nature
execute if entity @s[nbt={Item:{tag:{Enmity.ItemGroups:["gem_staves"]}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:4b,tag:{CustomModelData:1,Enmity:1}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:ghast_tear",Count:1b}}] run function enmity:items/crafting/custom/soul_scepter
execute if score @s enmity.math_a matches 41 if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:4,Enmity:1}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:3b,tag:{CustomModelData:8,Enmity:1}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:3b,tag:{CustomModelData:9,Enmity:1}}}] run function enmity:items/crafting/custom/aquaflame_bolt
execute if score @s enmity.math_a matches 3 if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:38,Enmity:1}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:2,Enmity:1}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:66,Enmity:1}}}] if entity @e[type=item,distance=..0.5,limit=1,nbt={Item:{id:"minecraft:firework_star",tag:{CustomModelData:2},Count:16b}}] if entity @e[type=item,distance=..0.5,limit=1,nbt={Item:{id:"minecraft:amethyst_shard",Count:8b}}] run function enmity:items/crafting/custom/nights_ray
execute if score @s enmity.math_a matches 117 if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:20b,tag:{CustomModelData:1,Enmity:1}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:ghast_tear",Count:4b}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:4b,tag:{CustomModelData:10,Enmity:1}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:book",Count:1b}}] run function enmity:items/crafting/custom/the_dance_of_souls
execute if entity @s[nbt={Item:{tag:{Enmity.ItemGroups:["gem_staves"]}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:heart_of_the_sea",Count:1b}}] run function enmity:items/crafting/custom/aquatic_scepter
execute if entity @s[nbt={Item:{id:"minecraft:leather_helmet",tag:{Enmity.ArmorType:"bone"}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:6b,tag:{CustomModelData:2,Enmity:1}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:3b,tag:{CustomModelData:1,Enmity:1}}}] run function enmity:items/crafting/custom/witherbone_helmet
execute if entity @s[nbt={Item:{id:"minecraft:leather_chestplate",tag:{Enmity.ArmorType:"bone"}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:6b,tag:{CustomModelData:2,Enmity:1}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:3b,tag:{CustomModelData:1,Enmity:1}}}] run function enmity:items/crafting/custom/witherbone_chestplate
execute if entity @s[nbt={Item:{id:"minecraft:leather_leggings",tag:{Enmity.ArmorType:"bone"}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:6b,tag:{CustomModelData:2,Enmity:1}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:3b,tag:{CustomModelData:1,Enmity:1}}}] run function enmity:items/crafting/custom/witherbone_leggings
execute if entity @s[nbt={Item:{id:"minecraft:leather_boots",tag:{Enmity.ArmorType:"bone"}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:6b,tag:{CustomModelData:2,Enmity:1}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:3b,tag:{CustomModelData:1,Enmity:1}}}] run function enmity:items/crafting/custom/witherbone_boots
execute if score @s enmity.math_a matches 18 if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:3b,tag:{CustomModelData:7,Enmity:1}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:popped_chorus_fruit",Count:12b}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:10b,tag:{CustomModelData:1,Enmity:1}}}] run function enmity:items/crafting/custom/spectral_rift
execute if score @s enmity.math_a matches 34 if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:3b,tag:{CustomModelData:7,Enmity:1}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:trident",Count:1b}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:72,Enmity:1}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:3b,tag:{CustomModelData:8,Enmity:1}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:3b,tag:{CustomModelData:9,Enmity:1}}}] run function enmity:items/crafting/custom/liquidator
execute if score @s enmity.math_a matches 38 if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:3b,tag:{CustomModelData:7,Enmity:1}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:popped_chorus_fruit",Count:12b}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:nether_star",Count:5b}}] run function enmity:items/crafting/custom/terminal_flash
execute if score @s enmity.math_a matches 10 if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:lapis_lazuli",Count:1b}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:nether_star",Count:3b}}] run function enmity:items/crafting/custom/potent_mana_ring
execute if score @s enmity.math_a matches 10 if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:redstone",Count:1b}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:nether_star",Count:3b}}] run function enmity:items/crafting/custom/potent_mana_regeneration_ring
execute if score @s enmity.math_a matches 43 if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:11,Enmity:1}}}] run function enmity:items/crafting/custom/cloud_in_a_balloon
execute if score @s enmity.math_a matches 12 if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:3b,tag:{CustomModelData:7,Enmity:1}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:phantom_membrane",Count:8b}}] run function enmity:items/crafting/custom/celestial_tracers
execute if score @s enmity.math_a matches 119 if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:51,Enmity:1}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:52,Enmity:1}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:53,Enmity:1}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:54,Enmity:1}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:blaze_powder",Count:6b}}] run function enmity:items/crafting/custom/heart_of_the_overworld
execute if score @s enmity.math_a matches 119 if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:58,Enmity:1}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:59,Enmity:1}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:60,Enmity:1}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:61,Enmity:1}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:blaze_powder",Count:6b}}] run function enmity:items/crafting/custom/heart_of_the_nether
execute if score @s enmity.math_a matches 55 if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:3b,tag:{CustomModelData:8,Enmity:1}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:nether_star",Count:4b}}] run function enmity:items/crafting/custom/heart_of_light
execute if score @s enmity.math_a matches 56 if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:3b,tag:{CustomModelData:9,Enmity:1}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:nether_star",Count:4b}}] run function enmity:items/crafting/custom/heart_of_darkness
execute if score @s enmity.math_a matches 20 if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:21,Enmity:1}}}] if entity @e[type=item,distance=..0.5,limit=1,nbt={Item:{id:"minecraft:firework_star",Count:3b,tag:{Enmity:1,CustomModelData:8}}}] if entity @e[type=item,distance=..0.5,limit=1,nbt={Item:{id:"minecraft:firework_star",Count:3b,tag:{Enmity:1,CustomModelData:9}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:33,Enmity:1}}}] run function enmity:items/crafting/custom/ethereal_ring
execute if score @s enmity.math_a matches 22 if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:3b,tag:{CustomModelData:7,Enmity:1}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:nether_star",Count:5b}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:5b,tag:{CustomModelData:10,Enmity:1}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:63,Enmity:1}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:23,Enmity:1}}}] run function enmity:items/crafting/custom/elemental_talisman
execute if score @s enmity.math_a matches 76 if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:3b,tag:{CustomModelData:7,Enmity:1}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:5b,tag:{CustomModelData:9,Enmity:1}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:5b,tag:{CustomModelData:8,Enmity:1}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:77,Enmity:1}}}] run function enmity:items/crafting/custom/elemental_emblem
execute if entity @s[nbt={Item:{id:"minecraft:leather_helmet",tag:{Enmity.ArmorType:"amethyst"}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:3b,tag:{CustomModelData:8,Enmity:1}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:nether_star",Count:2b}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:redstone",Count:1b}}] run function enmity:items/crafting/custom/crystalline_warrior_helmet
execute if entity @s[nbt={Item:{id:"minecraft:leather_helmet",tag:{Enmity.ArmorType:"amethyst"}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:3b,tag:{CustomModelData:8,Enmity:1}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:nether_star",Count:2b}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:glowstone_dust",Count:1b}}] run function enmity:items/crafting/custom/crystalline_mage_helmet
execute if entity @s[nbt={Item:{id:"minecraft:leather_helmet",tag:{Enmity.ArmorType:"amethyst"}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:3b,tag:{CustomModelData:8,Enmity:1}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:nether_star",Count:2b}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:gunpowder",Count:1b}}] run function enmity:items/crafting/custom/crystalline_summoner_helmet
execute if entity @s[nbt={Item:{id:"minecraft:leather_chestplate",tag:{Enmity.ArmorType:"amethyst"}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:3b,tag:{CustomModelData:8,Enmity:1}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:nether_star",Count:2b}}] run function enmity:items/crafting/custom/crystalline_chestplate
execute if entity @s[nbt={Item:{id:"minecraft:leather_leggings",tag:{Enmity.ArmorType:"amethyst"}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:3b,tag:{CustomModelData:8,Enmity:1}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:nether_star",Count:2b}}] run function enmity:items/crafting/custom/crystalline_leggings
execute if entity @s[nbt={Item:{id:"minecraft:leather_boots",tag:{Enmity.ArmorType:"amethyst"}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:3b,tag:{CustomModelData:8,Enmity:1}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:nether_star",Count:2b}}] run function enmity:items/crafting/custom/crystalline_boots
execute if entity @s[nbt={Item:{id:"minecraft:leather_helmet",tag:{Enmity.ArmorType:"crystalline"}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:3b,tag:{CustomModelData:7,Enmity:1}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:4b,tag:{CustomModelData:9,Enmity:1}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:popped_chorus_fruit",Count:10b}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:redstone",Count:1b}}] run function enmity:items/crafting/custom/celestial_warrior_helmet
execute if entity @s[nbt={Item:{id:"minecraft:leather_helmet",tag:{Enmity.ArmorType:"crystalline"}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:3b,tag:{CustomModelData:7,Enmity:1}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:4b,tag:{CustomModelData:9,Enmity:1}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:popped_chorus_fruit",Count:10b}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:glowstone_dust",Count:1b}}] run function enmity:items/crafting/custom/celestial_mage_helmet
execute if entity @s[nbt={Item:{id:"minecraft:leather_helmet",tag:{Enmity.ArmorType:"crystalline"}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:3b,tag:{CustomModelData:7,Enmity:1}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:4b,tag:{CustomModelData:9,Enmity:1}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:popped_chorus_fruit",Count:10b}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:gunpowder",Count:1b}}] run function enmity:items/crafting/custom/celestial_summoner_helmet
execute if entity @s[nbt={Item:{id:"minecraft:leather_chestplate",tag:{Enmity.ArmorType:"crystalline"}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:3b,tag:{CustomModelData:7,Enmity:1}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:4b,tag:{CustomModelData:9,Enmity:1}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:popped_chorus_fruit",Count:10b}}] run function enmity:items/crafting/custom/celestial_wingset
execute if entity @s[nbt={Item:{id:"minecraft:leather_leggings",tag:{Enmity.ArmorType:"crystalline"}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:3b,tag:{CustomModelData:7,Enmity:1}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:4b,tag:{CustomModelData:9,Enmity:1}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:popped_chorus_fruit",Count:10b}}] run function enmity:items/crafting/custom/celestial_leggings
execute if entity @s[nbt={Item:{id:"minecraft:leather_boots",tag:{Enmity.ArmorType:"crystalline"}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:3b,tag:{CustomModelData:7,Enmity:1}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:4b,tag:{CustomModelData:9,Enmity:1}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:popped_chorus_fruit",Count:10b}}] run function enmity:items/crafting/custom/celestial_boots
execute if score @s enmity.math_a matches 38 if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:6b,tag:{CustomModelData:8,Enmity:1}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:3b,tag:{CustomModelData:10,Enmity:1}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:amethyst_shard",Count:10b}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:ghast_tear",Count:2b}}] run function enmity:items/crafting/custom/rainbow_rod
execute if score @s enmity.math_a matches 36 if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:3b,tag:{CustomModelData:7,Enmity:1}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:19,Enmity:1}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:6b,tag:{CustomModelData:9,Enmity:1}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:popped_chorus_fruit",Count:16b}}] run function enmity:items/crafting/custom/sacred_storm
execute if score @s enmity.math_a matches 17 if entity @s[y=200,dy=1000] if predicate enmity:environment/is_raining if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:nether_star",Count:3b}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:16b,tag:{CustomModelData:5,Enmity:1}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:feather",Count:10b,tag:{CustomModelData:1,Enmity:1}}}] run function enmity:items/crafting/custom/cloud_staff
execute if score @s enmity.math_a matches 27 if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:4b,tag:{CustomModelData:10,Enmity:1}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:red_sand",Count:16b}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:91,Enmity:1}}}] run function enmity:items/crafting/custom/primordial_eruption
execute if score @s enmity.math_a matches 1 if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:75,Enmity:1}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:26,Enmity:1}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:37,Enmity:1}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:39,Enmity:1}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:40,Enmity:1}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:dragon_egg",Count:1b}}] run function enmity:items/crafting/custom/delirium/start
execute if score @s enmity.math_a matches 2 if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:dripstone_block",Count:16b}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:iron_axe"}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:iron_hoe"}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:iron_pickaxe"}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:iron_shovel"}}] run function enmity:items/crafting/custom/dripstone_digger
execute if score @s enmity.math_a matches 101 if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:netherite_ingot",Count:2b}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:fire_charge",Count:4b}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:magma_cream",Count:4b}}] run function enmity:items/crafting/custom/netherite_digger
execute if score @s enmity.math_a matches 102 if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:quartz",Count:8b}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:3b,tag:{Enmity:1,CustomModelData:8}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:3b,tag:{Enmity:1,CustomModelData:9}}}] run function enmity:items/crafting/custom/ethereal_excavator
execute if score @s enmity.math_a matches 103 if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:popped_chorus_fruit",Count:8b}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:end_stone",Count:16b}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:3b,tag:{Enmity:1,CustomModelData:7}}}] run function enmity:items/crafting/custom/celestial_excavator
execute if score @s enmity.math_a matches 33 if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:echo_shard",Count:4b}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",tag:{Enmity:1,CustomModelData:81}}}] run function enmity:items/crafting/custom/fathomless_amulet
execute if score @s enmity.math_a matches 96 if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:3b,tag:{CustomModelData:7,Enmity:1}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:2b,tag:{CustomModelData:8,Enmity:1}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:2b,tag:{CustomModelData:9,Enmity:1}}}] run function enmity:items/crafting/custom/subjugator
execute if score @s enmity.math_a matches 27 if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:prismarine_shard",Count:8b}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:5b,tag:{CustomModelData:5,Enmity:1}}}] run function enmity:items/crafting/custom/gust_caster
execute if score @s enmity.math_a matches 10 if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:blaze_powder",Count:8b}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:10b,tag:{CustomModelData:1,Enmity:1}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:nether_star",Count:3b}}] run function enmity:items/crafting/custom/mana_capacitor
execute if entity @s[nbt={Item:{id:"minecraft:feather",Count:5b,tag:{CustomModelData:1,Enmity:1}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:leather_boots"}},nbt=!{Item:{tag:{Enmity:1}}}] run function enmity:items/crafting/custom/hermes_boots
execute if score @s enmity.math_a matches 25 if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:amethyst_shard",Count:20b}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:4b,tag:{CustomModelData:8,Enmity:1}}}] run function enmity:items/crafting/custom/crystalline_twig
execute if score @s enmity.math_a matches 10 if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:8b,tag:{Enmity:1,CustomModelData:6}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:3b,tag:{CustomModelData:8,Enmity:1}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:3b,tag:{CustomModelData:9,Enmity:1}}}] run function enmity:items/crafting/custom/necklace_of_vitality
execute if score @s enmity.math_a matches 81 if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:magma_cream",Count:2b}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:prismarine_crystals",Count:2b}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",tag:{Enmity:1,CustomModelData:82}}}] run function enmity:items/crafting/custom/frostfire_charm