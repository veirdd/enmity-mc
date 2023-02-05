scoreboard players set @s enmity.raycast 0

execute store result score @s enmity.use run data get entity @s SelectedItem{id:"minecraft:warped_fungus_on_a_stick",tag:{Enmity.ItemGroups:["usable"]}}.tag.CustomModelData
execute if score @s enmity.use matches 0 store result score @s enmity.use run data get entity @s Inventory[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{Enmity.ItemGroups:["usable"]}}].tag.CustomModelData

execute if entity @s[tag=enmity.accessories.warped_glyph] run function enmity:items/accessories/warped_glyph/on_use

function enmity:items/usable

execute if entity @s[tag=enmity.accessories.mana_capacitor] run function enmity:items/accessories/mana_capacitor/on_use