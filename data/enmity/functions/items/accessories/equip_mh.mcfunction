scoreboard players set @s enmity.math_a 0
execute if data entity @s SelectedItem.tag{Enmity.ItemGroups:["mana"]} unless data entity @s Inventory[{Slot:9b}] store result score @s enmity.math_a run item replace entity @s container.9 from entity @s weapon.mainhand
execute if data entity @s SelectedItem.tag{Enmity.ItemGroups:["strength"]} unless data entity @s Inventory[{Slot:10b}] store result score @s enmity.math_a run item replace entity @s container.10 from entity @s weapon.mainhand
execute if data entity @s SelectedItem.tag{Enmity.ItemGroups:["mobility"]} unless data entity @s Inventory[{Slot:11b}] store result score @s enmity.math_a run item replace entity @s container.11 from entity @s weapon.mainhand
execute if data entity @s SelectedItem.tag{Enmity.ItemGroups:["effect"]} unless data entity @s Inventory[{Slot:12b}] store result score @s enmity.math_a run item replace entity @s container.12 from entity @s weapon.mainhand
execute if score @s enmity.math_a matches 1 run item replace entity @s weapon.mainhand with air
scoreboard players set @s enmity.use -1