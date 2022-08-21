tellraw @s {"text":"\n\n"}

execute if score @s enmity.wiki matches 1 run function enmity:wiki/tabs/main
    execute if score @s enmity.wiki matches 11 run function enmity:wiki/tabs/main/items
        execute if score @s enmity.wiki matches 111 run function enmity:wiki/tabs/main/items/magic_weapons
            execute if score @s enmity.wiki matches 111001..111099 run function enmity:wiki/open/magic_weapons
        execute if score @s enmity.wiki matches 112 run function enmity:wiki/tabs/main/items/armor_and_accessories
            execute if score @s enmity.wiki matches 112001..112099 run function enmity:wiki/open/armor_and_accessories
        execute if score @s enmity.wiki matches 113 run function enmity:wiki/tabs/main/items/other_items
            execute if score @s enmity.wiki matches 113001..113099 run function enmity:wiki/open/other_items
        execute if score @s enmity.wiki matches 114 run function enmity:wiki/tabs/main/items/modified_vanilla_items
            execute if score @s enmity.wiki matches 1141 run function enmity:wiki/tabs/main/items/modified_vanilla_items/saplings
            execute if score @s enmity.wiki matches 1142 run function enmity:wiki/tabs/main/items/modified_vanilla_items/bundle
            execute if score @s enmity.wiki matches 1143 run function enmity:wiki/tabs/main/items/modified_vanilla_items/enchanted_golden_apple
            execute if score @s enmity.wiki matches 1144 run function enmity:wiki/tabs/main/items/modified_vanilla_items/ender_eye
            execute if score @s enmity.wiki matches 1145 run function enmity:wiki/tabs/main/items/modified_vanilla_items/golden_apple
            execute if score @s enmity.wiki matches 1146 run function enmity:wiki/tabs/main/items/modified_vanilla_items/totem_of_undying
            execute if score @s enmity.wiki matches 1147 run function enmity:wiki/tabs/main/items/modified_vanilla_items/honey_bottle
    execute if score @s enmity.wiki matches 12 run function enmity:wiki/tabs/main/entities
        execute if score @s enmity.wiki matches 121 run function enmity:wiki/tabs/main/entities/end_wither_skeleton
        execute if score @s enmity.wiki matches 122 run function enmity:wiki/tabs/main/entities/hellbat
        execute if score @s enmity.wiki matches 123 run function enmity:wiki/tabs/main/entities/sculker
        execute if score @s enmity.wiki matches 124 run function enmity:wiki/tabs/main/entities/smiler
        execute if score @s enmity.wiki matches 125 run function enmity:wiki/tabs/main/entities/wraith
        execute if score @s enmity.wiki matches 126 run function enmity:wiki/tabs/main/entities/illusioner
        execute if score @s enmity.wiki matches 127 run function enmity:wiki/tabs/main/entities/harpy
    execute if score @s enmity.wiki matches 13 run function enmity:wiki/tabs/main/gameplay
        execute if score @s enmity.wiki matches 13001 run function enmity:wiki/tabs/main/gameplay/accessories
        execute if score @s enmity.wiki matches 13002 run function enmity:wiki/tabs/main/gameplay/darkness
        execute if score @s enmity.wiki matches 13003 run function enmity:wiki/tabs/main/gameplay/enchantment_crafting
        execute if score @s enmity.wiki matches 13004 run function enmity:wiki/tabs/main/gameplay/expert_mode
        execute if score @s enmity.wiki matches 13005 run function enmity:wiki/tabs/main/gameplay/gameplay_changes
        execute if score @s enmity.wiki matches 13006 run function enmity:wiki/tabs/main/gameplay/hardmode
        execute if score @s enmity.wiki matches 13007 run function enmity:wiki/tabs/main/gameplay/magic
        execute if score @s enmity.wiki matches 13008 run function enmity:wiki/tabs/main/gameplay/summoning_the_elder_guardian
        execute if score @s enmity.wiki matches 13009 run function enmity:wiki/tabs/main/gameplay/temperature
        execute if score @s enmity.wiki matches 13010 run function enmity:wiki/tabs/main/gameplay/furnace_minecart_digging
        execute if score @s enmity.wiki matches 13011 run function enmity:wiki/tabs/main/gameplay/summoning_the_giant
        execute if score @s enmity.wiki matches 13012 run function enmity:wiki/tabs/main/gameplay/death_mode
        execute if score @s enmity.wiki matches 13013 run function enmity:wiki/tabs/main/gameplay/coordinates
        execute if score @s enmity.wiki matches 13014 run function enmity:wiki/tabs/main/gameplay/enchantment_changes
    execute if score @s enmity.wiki matches 14 run function enmity:wiki/tabs/main/blocks
        execute if score @s enmity.wiki matches 141 run function enmity:wiki/tabs/main/blocks/waystone

scoreboard players set @s enmity.wiki 0
scoreboard players enable @s enmity.wiki
execute at @s run playsound block.note_block.hat master @s ~ ~ ~ 2 2 0