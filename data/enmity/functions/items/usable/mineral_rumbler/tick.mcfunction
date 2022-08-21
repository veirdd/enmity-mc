execute if score @s enmity.age matches 1 run summon armor_stand ~ ~ ~ {Small:1,Silent:1,Invisible:1,ArmorItems:[{},{},{},{id:"minecraft:granite",Count:1}],Tags:["enmity.projectile","enmity.mineral","enmity.granite","enmity.new"]}
execute if score @s enmity.age matches 1 run scoreboard players set @e[type=armor_stand,tag=enmity.mineral,tag=enmity.new] enmity.dmg 3
execute if score @s enmity.age matches 1 run scoreboard players operation @e[type=armor_stand,tag=enmity.new] enmity.dmg += @s enmity.dmg_bst
execute if score @s enmity.age matches 1 run scoreboard players operation @e[type=armor_stand,tag=enmity.new] enmity.player_id = @s enmity.player_id
execute if score @s enmity.age matches 1 run tag @e[type=armor_stand,tag=enmity.new] remove enmity.new
execute if score @s enmity.age matches 11 run summon armor_stand ~ ~ ~ {Small:1,Silent:1,Invisible:1,ArmorItems:[{},{},{},{id:"minecraft:andesite",Count:1}],Tags:["enmity.projectile","enmity.mineral","enmity.andesite","enmity.new"]}
execute if score @s enmity.age matches 11 run scoreboard players set @e[type=armor_stand,tag=enmity.mineral,tag=enmity.new] enmity.dmg 4
execute if score @s enmity.age matches 11 run scoreboard players operation @e[type=armor_stand,tag=enmity.new] enmity.dmg += @s enmity.dmg_bst
execute if score @s enmity.age matches 11 run scoreboard players operation @e[type=armor_stand,tag=enmity.new] enmity.player_id = @s enmity.player_id
execute if score @s enmity.age matches 11 run tag @e[type=armor_stand,tag=enmity.new] remove enmity.new
execute if score @s enmity.age matches 21 run summon armor_stand ~ ~ ~ {Small:1,Silent:1,Invisible:1,ArmorItems:[{},{},{},{id:"minecraft:diorite",Count:1}],Tags:["enmity.projectile","enmity.mineral","enmity.diorite","enmity.new"]}
execute if score @s enmity.age matches 21 run scoreboard players set @e[type=armor_stand,tag=enmity.mineral,tag=enmity.new] enmity.dmg 5
execute if score @s enmity.age matches 21 run scoreboard players operation @e[type=armor_stand,tag=enmity.new] enmity.dmg += @s enmity.dmg_bst
execute if score @s enmity.age matches 21 run scoreboard players operation @e[type=armor_stand,tag=enmity.new] enmity.player_id = @s enmity.player_id
execute if score @s enmity.age matches 21 run tag @e[type=armor_stand,tag=enmity.new] remove enmity.new
execute if score @s enmity.age matches 21.. run kill @s