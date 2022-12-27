scoreboard players remove @s enmity.mana 80
scoreboard players add @s enmity.cooldown 20
playsound entity.iron_golem.attack neutral @a[distance=0..] ~ ~ ~ 1 0 0
playsound entity.iron_golem.attack neutral @a[distance=0..] ~ ~ ~ 1 0 0
playsound entity.iron_golem.attack neutral @a[distance=0..] ~ ~ ~ 1 0 0
playsound entity.iron_golem.attack neutral @a[distance=0..] ~ ~ ~ 1 0 0
playsound entity.iron_golem.attack neutral @a[distance=0..] ~ ~ ~ 1 0 0
execute at @s anchored eyes run particle crit ^ ^ ^0.2 0.3 0.3 0.3 0.1 20 force
summon minecraft:armor_stand ~ ~0.5 ~ {Small:1,Silent:1,Invisible:1,NoGravity:1,ArmorItems:[{},{},{},{id:"minecraft:warped_fungus_on_a_stick",Count:1,tag:{CustomModelData:1008}}],Tags:["enmity.projectile","enmity.boulder","enmity.new","enmity.no_motion"]}
tp @e[type=armor_stand,tag=enmity.new] @s
execute at @s positioned ~ ~-0.5 ~ anchored eyes run tp @e[type=armor_stand,tag=enmity.new] ^ ^ ^0.2
scoreboard players set @e[type=armor_stand,tag=enmity.new] enmity.dmg 9
scoreboard players operation @e[type=armor_stand,tag=enmity.new] enmity.dmg += @s enmity.dmg_bst
scoreboard players operation @e[type=armor_stand,tag=enmity.new] enmity.player_id = @s enmity.player_id
tag @e[type=armor_stand,tag=enmity.new] remove enmity.new