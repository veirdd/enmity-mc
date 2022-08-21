execute store result score @s enmity.math_a run data get entity @s Inventory[{Slot:11b}].tag.CustomModelData
execute if score @s enmity.math_a matches 12 run summon marker ~ ~ ~ {Tags:["enmity.new","enmity.homing_trail","enmity.projectile"]}
execute if score @s enmity.math_a matches 28 run summon marker ~ ~ ~ {Tags:["enmity.new","enmity.homing_trail","enmity.projectile"]}
execute if score @s enmity.math_a matches 12 run scoreboard players set @e[type=marker,tag=enmity.new] enmity.dmg 6
execute if score @s enmity.math_a matches 28 run scoreboard players set @e[type=marker,tag=enmity.new] enmity.dmg 18
scoreboard players operation @e[type=marker,tag=enmity.new] enmity.player_id = @s enmity.player_id
execute if score @s enmity.player_targeting matches 1 run tag @e[type=marker,tag=enmity.new] add enmity.player_targeting
tag @e[type=marker,tag=enmity.new] remove enmity.new