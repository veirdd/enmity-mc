tag @s[tag=enmity.subjugator] add enmity.remove_subjugator
tag @s add enmity.subjugator
tag @s[tag=enmity.remove_subjugator] remove enmity.subjugator
tag @s[tag=enmity.remove_subjugator] remove enmity.remove_subjugator
execute store result score @s enmity.subjugator_range run scoreboard players operation @s enmity.raycast /= %const_4 enmity.value
scoreboard players add @s enmity.subjugator_range 1
scoreboard players operation @e[type=!#enmity:not_living,tag=enmity.hit] enmity.subjugator_capture_id = @s enmity.player_id
tag @e[type=!#enmity:not_living,tag=enmity.hit] remove enmity.hit
scoreboard players set @s enmity.raycast 0
scoreboard players remove @s enmity.mana 500