execute if entity @s[nbt={Item:{id:"minecraft:golden_helmet"}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:magma_cream",Count:4b}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:netherite_scrap",Count:2b}}] run function enmity:items/crafting/custom/molten_helmet
execute if entity @s[nbt={Item:{id:"minecraft:golden_chestplate"}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:magma_cream",Count:4b}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:netherite_scrap",Count:2b}}] run function enmity:items/crafting/custom/molten_chestplate
execute if entity @s[nbt={Item:{id:"minecraft:golden_leggings"}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:magma_cream",Count:4b}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:netherite_scrap",Count:2b}}] run function enmity:items/crafting/custom/molten_leggings
execute if entity @s[nbt={Item:{id:"minecraft:golden_boots"}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:magma_cream",Count:4b}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:netherite_scrap",Count:2b}}] run function enmity:items/crafting/custom/molten_boots
execute if entity @s[nbt={Item:{id:"minecraft:firework_star",Count:1b,tag:{Enmity:1,CustomModelData:6}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:emerald",Count:1b}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:gold_ingot",Count:5b}}] run function enmity:items/crafting/custom/silvan_necklace
execute if entity @s[nbt={Item:{id:"minecraft:firework_star",Count:1b,tag:{Enmity:1,CustomModelData:6}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:leather_boots",Count:1b}},nbt=!{Item:{tag:{Enmity:1}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:nether_wart",Count:16b}}] run function enmity:items/crafting/custom/silvan_boots
execute if entity @s[nbt={Item:{id:"minecraft:firework_star",Count:1b,tag:{Enmity:1,CustomModelData:6}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:leather_leggings",Count:1b}},nbt=!{Item:{tag:{Enmity:1}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:nether_wart",Count:16b}}] run function enmity:items/crafting/custom/silvan_leggings
execute if entity @s[nbt={Item:{id:"minecraft:firework_star",Count:1b,tag:{Enmity:1,CustomModelData:6}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:leather_chestplate",Count:1b}},nbt=!{Item:{tag:{Enmity:1}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:nether_wart",Count:16b}}] run function enmity:items/crafting/custom/silvan_chestplate
execute if entity @s[nbt={Item:{id:"minecraft:firework_star",Count:1b,tag:{Enmity:1,CustomModelData:6}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:leather_helmet",Count:1b}},nbt=!{Item:{tag:{Enmity:1}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:nether_wart",Count:16b}}] run function enmity:items/crafting/custom/silvan_helmet
execute if entity @s[nbt={Item:{id:"minecraft:firework_star",Count:3b,tag:{Enmity:1,CustomModelData:10}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:diamond_boots",Count:1b}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:prismarine_shard",Count:5b}}] run function enmity:items/crafting/custom/tidal_boots
execute if entity @s[nbt={Item:{id:"minecraft:firework_star",Count:3b,tag:{Enmity:1,CustomModelData:10}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:diamond_leggings",Count:1b}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:prismarine_shard",Count:5b}}] run function enmity:items/crafting/custom/tidal_leggings
execute if entity @s[nbt={Item:{id:"minecraft:firework_star",Count:3b,tag:{Enmity:1,CustomModelData:10}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:diamond_chestplate",Count:1b}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:prismarine_shard",Count:5b}}] run function enmity:items/crafting/custom/tidal_chestplate
execute if entity @s[nbt={Item:{id:"minecraft:firework_star",Count:3b,tag:{Enmity:1,CustomModelData:10}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:diamond_helmet",Count:1b}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:prismarine_shard",Count:5b}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:redstone",Count:1b}}] run function enmity:items/crafting/custom/tidal_warrior_helmet
execute if entity @s[nbt={Item:{id:"minecraft:firework_star",Count:3b,tag:{Enmity:1,CustomModelData:10}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:diamond_helmet",Count:1b}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:prismarine_shard",Count:5b}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:glowstone_dust",Count:1b}}] run function enmity:items/crafting/custom/tidal_mage_helmet
execute if entity @s[nbt={Item:{id:"minecraft:firework_star",Count:3b,tag:{Enmity:1,CustomModelData:10}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:diamond_helmet",Count:1b}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:prismarine_shard",Count:5b}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:gunpowder",Count:1b}}] run function enmity:items/crafting/custom/tidal_summoner_helmet
execute if entity @s[nbt={Item:{id:"minecraft:diamond_sword"}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:quartz",Count:16b}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:6b,tag:{Enmity:1,CustomModelData:8}}}] run function enmity:items/crafting/custom/sky_fracture
execute if entity @s[nbt={Item:{id:"minecraft:book"}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:4b,tag:{CustomModelData:9,Enmity:1}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:amethyst_shard",Count:8b}}] run function enmity:items/crafting/custom/crystal_storm
execute if entity @s[nbt={Item:{id:"minecraft:ender_pearl",Count:4b}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:1b,tag:{CustomModelData:10,Enmity:1}}}] run function enmity:items/crafting/custom/ender_eye
execute if entity @s[nbt={Item:{id:"minecraft:firework_star",Count:1b,tag:{Enmity:1,CustomModelData:1}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:poppy",Count:2b}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:dandelion",Count:2b}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:wheat_seeds",Count:4b}}] run function enmity:items/crafting/custom/soul_of_nature
execute if entity @s[nbt={Item:{id:"minecraft:enchanted_golden_apple",Count:1b}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:1b,tag:{CustomModelData:8,Enmity:1}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:1b,tag:{CustomModelData:9,Enmity:1}}}] run function enmity:items/crafting/custom/forbidden_apple
execute if entity @s[nbt={Item:{id:"minecraft:firework_star",Count:1b,tag:{Enmity:1,CustomModelData:13}}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{Count:1b}},nbt=!{Item:{id:"minecraft:firework_star",tag:{Enmity:1,CustomModelData:13}}},nbt=!{Item:{tag:{Enmity.EternalItem:1}}}] run function enmity:items/crafting/custom/eternal
execute if entity @s[nbt={Item:{id:"minecraft:compass",Count:1b}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:clock",Count:1b}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{tag:{Enmity.Thermometer:1},Count:1b}}] run function enmity:items/crafting/custom/calculator
execute if entity @s[nbt={Item:{id:"minecraft:potion",tag:{Potion:"minecraft:strength"}}}] run function enmity:items/crafting/custom/berserk_potion
execute if entity @s[nbt={Item:{id:"minecraft:potion",tag:{Potion:"minecraft:long_strength"}}}] run function enmity:items/crafting/custom/berserk_long_potion
execute if entity @s[nbt={Item:{id:"minecraft:potion",tag:{Potion:"minecraft:strong_strength"}}}] run function enmity:items/crafting/custom/berserk_strong_potion
execute if entity @s[nbt={Item:{id:"minecraft:splash_potion",tag:{Potion:"minecraft:strength"}}}] run function enmity:items/crafting/custom/berserk_splash_potion
execute if entity @s[nbt={Item:{id:"minecraft:splash_potion",tag:{Potion:"minecraft:long_strength"}}}] run function enmity:items/crafting/custom/berserk_long_splash_potion
execute if entity @s[nbt={Item:{id:"minecraft:splash_potion",tag:{Potion:"minecraft:strong_strength"}}}] run function enmity:items/crafting/custom/berserk_strong_splash_potion
execute if entity @s[nbt={Item:{id:"minecraft:glass_bottle"}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:5b,tag:{CustomModelData:5,Enmity:1}}}] run function enmity:items/crafting/custom/cloud_in_a_bottle
execute if entity @s[nbt={Item:{id:"minecraft:honey_bottle"}}] if entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:glow_berries",Count:2b}}] run function enmity:items/crafting/custom/mana_potion