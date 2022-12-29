execute if score @s enmity.age matches 0 run function enmity:items/usable/dazzling_rod/die
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
execute positioned ~ ~1.8 ~ facing entity @e[type=#enmity:enemies,tag=!enmity.sentry,tag=!enmity.tamed,tag=!enmity.projectile,distance=..6,limit=1,sort=nearest] eyes run function enmity:items/usable/dazzling_rod/attack