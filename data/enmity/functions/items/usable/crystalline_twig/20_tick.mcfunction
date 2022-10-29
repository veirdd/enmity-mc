execute if score @s enmity.age matches 55..60 run data modify entity @s CustomName set value '{"text":"||||||||||","color":"green"}'
execute if score @s enmity.age matches 49..54 run data modify entity @s CustomName set value '[{"text":"|||||||||","color":"green"},{"text":"|","color":"gray"}]'
execute if score @s enmity.age matches 43..48 run data modify entity @s CustomName set value '[{"text":"||||||||","color":"green"},{"text":"||","color":"gray"}]'
execute if score @s enmity.age matches 37..42 run data modify entity @s CustomName set value '[{"text":"|||||||","color":"yellow"},{"text":"|||","color":"gray"}]'
execute if score @s enmity.age matches 31..36 run data modify entity @s CustomName set value '[{"text":"||||||","color":"yellow"},{"text":"||||","color":"gray"}]'
execute if score @s enmity.age matches 25..30 run data modify entity @s CustomName set value '[{"text":"|||||","color":"yellow"},{"text":"|||||","color":"gray"}]'
execute if score @s enmity.age matches 19..24 run data modify entity @s CustomName set value '[{"text":"||||","color":"yellow"},{"text":"||||||","color":"gray"}]'
execute if score @s enmity.age matches 13..18 run data modify entity @s CustomName set value '[{"text":"|||","color":"red"},{"text":"|||||||","color":"gray"}]'
execute if score @s enmity.age matches 7..12 run data modify entity @s CustomName set value '[{"text":"||","color":"red"},{"text":"||||||||","color":"gray"}]'
execute if score @s enmity.age matches 0..6 run data modify entity @s CustomName set value '[{"text":"|","color":"red"},{"text":"|||||||||","color":"gray"}]'
execute unless score @s enmity.cooldown matches 4.. run scoreboard players add @s enmity.cooldown 1
execute if score @s enmity.cooldown matches 1 run data modify entity @s ArmorItems[3].tag.CustomModelData set value 1016
execute if score @s enmity.cooldown matches 2 run data modify entity @s ArmorItems[3].tag.CustomModelData set value 1017
execute if score @s enmity.cooldown matches 3 run data modify entity @s ArmorItems[3].tag.CustomModelData set value 1018
execute if score @s enmity.cooldown matches 4 run data modify entity @s ArmorItems[3].tag.CustomModelData set value 1019