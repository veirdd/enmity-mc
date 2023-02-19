tellraw @s {"text":"\n\n"}

execute if score @s enmity.guide matches 1 run function enmity:guide/tabs/main
    execute if score @s enmity.guide matches 11 run function enmity:guide/tabs/main/items
        execute if score @s enmity.guide matches 111 run function enmity:guide/tabs/main/items/magic_weapons
            execute if score @s enmity.guide matches 111001..111099 run function enmity:guide/open/magic_weapons
        execute if score @s enmity.guide matches 112 run function enmity:guide/tabs/main/items/armor_and_accessories
            execute if score @s enmity.guide matches 112001..112099 run function enmity:guide/open/armor_and_accessories
        execute if score @s enmity.guide matches 113 run function enmity:guide/tabs/main/items/other_items
            execute if score @s enmity.guide matches 113001..113099 run function enmity:guide/open/other_items
        execute if score @s enmity.guide matches 114 run function enmity:guide/tabs/main/items/modified_vanilla_items/highlights/null
            execute if score @s enmity.guide matches 1141 run function enmity:guide/tabs/main/items/modified_vanilla_items/saplings
            execute if score @s enmity.guide matches 1142 run function enmity:guide/tabs/main/items/modified_vanilla_items/bundle
            execute if score @s enmity.guide matches 1143 run function enmity:guide/tabs/main/items/modified_vanilla_items/enchanted_golden_apple
            execute if score @s enmity.guide matches 1144 run function enmity:guide/tabs/main/items/modified_vanilla_items/ender_eye
            execute if score @s enmity.guide matches 1145 run function enmity:guide/tabs/main/items/modified_vanilla_items/golden_apple
            execute if score @s enmity.guide matches 1146 run function enmity:guide/tabs/main/items/modified_vanilla_items/totem_of_undying
            execute if score @s enmity.guide matches 1147 run function enmity:guide/tabs/main/items/modified_vanilla_items/honey_bottle
    execute if score @s enmity.guide matches 12 run function enmity:guide/tabs/main/entities
        execute if score @s enmity.guide matches 12001 if entity @s[tag=enmity.encountered.end_wither_skeleton] run function enmity:guide/tabs/main/entities/end_wither_skeleton
        execute if score @s enmity.guide matches 12002 if entity @s[tag=enmity.encountered.hellbat] run function enmity:guide/tabs/main/entities/hellbat
        execute if score @s enmity.guide matches 12003 if entity @s[tag=enmity.encountered.sculker] run function enmity:guide/tabs/main/entities/sculker
        execute if score @s enmity.guide matches 12004 if entity @s[tag=enmity.encountered.smiler] run function enmity:guide/tabs/main/entities/smiler
        execute if score @s enmity.guide matches 12005 if entity @s[tag=enmity.encountered.wraith] run function enmity:guide/tabs/main/entities/wraith
        execute if score @s enmity.guide matches 12006 if entity @s[tag=enmity.encountered.illusioner] run function enmity:guide/tabs/main/entities/illusioner
        execute if score @s enmity.guide matches 12007 if entity @s[tag=enmity.encountered.harpy] run function enmity:guide/tabs/main/entities/harpy
        execute if score @s enmity.guide matches 12008 if entity @s[tag=enmity.encountered.flame_spewer] run function enmity:guide/tabs/main/entities/flame_spewer
        execute if score @s enmity.guide matches 12009 if entity @s[tag=enmity.encountered.nimbus] run function enmity:guide/tabs/main/entities/nimbus
        execute if score @s enmity.guide matches 12010 if entity @s[tag=enmity.encountered.crimson_visage] run function enmity:guide/tabs/main/entities/crimson_visage
        execute if score @s enmity.guide matches 12011 if entity @s[tag=enmity.encountered.warped_visage] run function enmity:guide/tabs/main/entities/warped_visage
    execute if score @s enmity.guide matches 13 run function enmity:guide/tabs/main/gameplay
        execute if score @s enmity.guide matches 13001 run function enmity:guide/tabs/main/gameplay/accessories
        execute if score @s enmity.guide matches 13002 run function enmity:guide/tabs/main/gameplay/darkness
        execute if score @s enmity.guide matches 13003 run function enmity:guide/tabs/main/gameplay/enchantment_crafting
        execute if score @s enmity.guide matches 13004 run function enmity:guide/tabs/main/gameplay/expert_mode
        execute if score @s enmity.guide matches 13005 run function enmity:guide/tabs/main/gameplay/gameplay_changes
        execute if score @s enmity.guide matches 13006 run function enmity:guide/tabs/main/gameplay/hardmode
        execute if score @s enmity.guide matches 13007 run function enmity:guide/tabs/main/gameplay/magic
        execute if score @s enmity.guide matches 13008 run function enmity:guide/tabs/main/gameplay/summoning_the_elder_guardian
        execute if score @s enmity.guide matches 13009 run function enmity:guide/tabs/main/gameplay/temperature
        execute if score @s enmity.guide matches 13010 run function enmity:guide/tabs/main/gameplay/furnace_minecart_digging
        execute if score @s enmity.guide matches 13011 run function enmity:guide/tabs/main/gameplay/summoning_the_giant
        execute if score @s enmity.guide matches 13012 run function enmity:guide/tabs/main/gameplay/death_mode
        execute if score @s enmity.guide matches 13013 run function enmity:guide/tabs/main/gameplay/coordinates
        execute if score @s enmity.guide matches 13014 run function enmity:guide/tabs/main/gameplay/enchantment_changes
        execute if score @s enmity.guide matches 13015 run function enmity:guide/tabs/main/gameplay/mana
    execute if score @s enmity.guide matches 14 run function enmity:guide/tabs/main/blocks
        execute if score @s enmity.guide matches 141 run function enmity:guide/tabs/main/blocks/waystone
        execute if score @s enmity.guide matches 142 run function enmity:guide/tabs/main/blocks/heating_coil
        execute if score @s enmity.guide matches 143 run function enmity:guide/tabs/main/blocks/cooling_coil
        execute if score @s enmity.guide matches 144 run function enmity:guide/tabs/main/blocks/soul_chest

scoreboard players set @s enmity.guide 0
scoreboard players enable @s enmity.guide
execute at @s run playsound block.note_block.hat master @s ~ ~ ~ 2 2 0