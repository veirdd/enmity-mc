execute if score @s enmity.use matches 108 run function enmity:items/usable/subjugator/capture
execute if score @s enmity.use matches 109 unless score @s enmity.subjugator_range matches 16 run scoreboard players add @s enmity.subjugator_range 1
execute if score @s enmity.use matches 110 unless score @s enmity.subjugator_range matches 1 run scoreboard players remove @s enmity.subjugator_range 1
execute if score @s enmity.use matches 109..110 run scoreboard players add @s enmity.cooldown 4