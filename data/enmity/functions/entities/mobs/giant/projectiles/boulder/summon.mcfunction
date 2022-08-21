summon minecraft:armor_stand ~ ~-1000 ~ {Small:1,Silent:1,Invisible:1,NoGravity:1,ArmorItems:[{},{},{},{id:"minecraft:warped_fungus_on_a_stick",Count:1,tag:{CustomModelData:1008}}],Tags:["enmity.projectile","enmity.giant","enmity.boulder","enmity.new","enmity.no_motion"]}
summon minecraft:armor_stand ~ ~-1000 ~ {Small:1,Silent:1,Invisible:1,NoGravity:1,ArmorItems:[{},{},{},{id:"minecraft:warped_fungus_on_a_stick",Count:1,tag:{CustomModelData:1008}}],Tags:["enmity.projectile","enmity.giant","enmity.boulder","enmity.new","enmity.no_motion"]}
summon minecraft:armor_stand ~ ~-1000 ~ {Small:1,Silent:1,Invisible:1,NoGravity:1,ArmorItems:[{},{},{},{id:"minecraft:warped_fungus_on_a_stick",Count:1,tag:{CustomModelData:1008}}],Tags:["enmity.projectile","enmity.giant","enmity.boulder","enmity.new","enmity.no_motion"]}
tp @e[type=armor_stand,tag=enmity.new] @s
execute if score %difficulty enmity.value matches 2 run scoreboard players set @e[type=armor_stand,tag=enmity.new] enmity.dmg 5
execute if score %difficulty enmity.value matches 1 run scoreboard players set @e[type=armor_stand,tag=enmity.new] enmity.dmg 3
scoreboard players operation @e[type=armor_stand,tag=enmity.new] enmity.player_id = @s enmity.player_id
execute as @e[type=armor_stand,tag=enmity.new] at @s positioned ^ ^ ^3 run tp @s ~ ~7 ~ ~ ~-15
tag @e[type=armor_stand,tag=enmity.new] remove enmity.new
playsound entity.iron_golem.attack neutral @a[distance=0..] ~ ~7 ~ 2 0 0
playsound entity.iron_golem.attack neutral @a[distance=0..] ~ ~7 ~ 2 0 0
playsound entity.iron_golem.attack neutral @a[distance=0..] ~ ~7 ~ 2 0 0