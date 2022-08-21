execute store result score @s enmity.posx run data get entity @s Pos[0]
execute store result score @s enmity.posy run data get entity @s Pos[1]
execute store result score @s enmity.posz run data get entity @s Pos[2]
execute store result score @s enmity.rotation run data get entity @s Rotation[0]
execute if score @s enmity.rotation matches ..-136 run title @s title [{"text":"-<","color":"gray"},{"text":"N","color":"white"},{"text":">-","color":"gray"}]
execute if score @s enmity.rotation matches 135.. run title @s title [{"text":"-<","color":"gray"},{"text":"N","color":"white"},{"text":">-","color":"gray"}]
execute if score @s enmity.rotation matches -135..-46 run title @s title [{"text":"-<","color":"gray"},{"text":"E","color":"white"},{"text":">-","color":"gray"}]
execute if score @s enmity.rotation matches -45..44 run title @s title [{"text":"-<","color":"gray"},{"text":"S","color":"white"},{"text":">-","color":"gray"}]
execute if score @s enmity.rotation matches 45..134 run title @s title [{"text":"-<","color":"gray"},{"text":"W","color":"white"},{"text":">-","color":"gray"}]
title @s subtitle [{"text":"X: ","color":"gray"},{"score":{"name":"@s","objective":"enmity.posx"},"color":"white"},{"text":" Y: ","color":"gray"},{"score":{"name":"@s","objective":"enmity.posy"},"color":"white"},{"text":" Z: ","color":"gray"},{"score":{"name":"@s","objective":"enmity.posz"},"color":"white"}]
scoreboard players operation @s enmity.mana_regen *= %const_20 enmity.value
item modify entity @s weapon.offhand enmity:calculator/calculator
scoreboard players operation @s enmity.mana_regen /= %const_20 enmity.value