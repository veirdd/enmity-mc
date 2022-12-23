scoreboard players set @s enmity.temp 0
execute if predicate enmity:environment/biome_temperature if score @s enmity.biome_type matches 4 run scoreboard players add @s enmity.temp 2
execute if predicate enmity:environment/biome_temperature if score @s enmity.biome_type matches 5 run scoreboard players add @s enmity.temp 1
execute if predicate enmity:environment/biome_temperature if score @s enmity.biome_type matches 6 run scoreboard players remove @s enmity.temp 1
execute if predicate enmity:environment/biome_temperature if score @s enmity.biome_type matches 7 run scoreboard players remove @s enmity.temp 3
execute if predicate enmity:environment/biome_temperature if score @s enmity.biome_type matches 9 run scoreboard players add @s enmity.temp 1
execute if predicate enmity:environment/biome_temperature if score @s enmity.biome_type matches 10 run scoreboard players remove @s enmity.temp 4
execute if predicate enmity:environment/biome_temperature if score @s enmity.biome_type matches 12 run scoreboard players remove @s enmity.temp 4
execute if predicate enmity:environment/biome_temperature if score @s enmity.biome_type matches 13 run scoreboard players remove @s enmity.temp 5
execute if score @s enmity.biome_type matches 14 run scoreboard players add @s enmity.temp 5
execute if score @s enmity.biome_type matches 15 run scoreboard players remove @s enmity.temp 5
execute if predicate enmity:environment/biome/volcanic_crater run scoreboard players add @s enmity.temp 4
execute if predicate enmity:environment/biome/deep_dark run scoreboard players remove @s enmity.temp 5
execute if predicate enmity:environment/in_overworld if predicate enmity:environment/underground if score @s enmity.temp matches 1.. run scoreboard players remove @s enmity.temp 1
execute if predicate enmity:environment/in_overworld if predicate enmity:environment/underground if score @s enmity.temp matches 1.. run scoreboard players remove @s enmity.temp 1
execute if predicate enmity:environment/in_overworld if predicate enmity:environment/underground if score @s enmity.temp matches ..-1 run scoreboard players add @s enmity.temp 1
execute if predicate enmity:environment/in_overworld if predicate enmity:environment/underground if score @s enmity.temp matches ..-1 run scoreboard players add @s enmity.temp 1
execute if predicate enmity:environment/in_overworld if predicate enmity:environment/deep_underground run scoreboard players remove @s enmity.temp 1
execute unless predicate enmity:environment/is_night if predicate enmity:environment/in_overworld if predicate enmity:environment/biome_temperature run scoreboard players add @s enmity.temp 1
execute if predicate enmity:environment/sky_temp_0 if predicate enmity:environment/in_overworld unless score @s enmity.temp matches ..-2 run scoreboard players remove @s enmity.temp 1
execute if predicate enmity:environment/sky_temp_1 if predicate enmity:environment/in_overworld unless score @s enmity.temp matches ..-3 run scoreboard players remove @s enmity.temp 1
execute if predicate enmity:environment/sky_temp_2 if predicate enmity:environment/in_overworld unless score @s enmity.temp matches ..-4 run scoreboard players remove @s enmity.temp 1
execute if predicate enmity:environment/sky_temp_2 if predicate enmity:environment/in_overworld unless score @s enmity.temp matches ..-4 run scoreboard players remove @s enmity.temp 1
execute if predicate enmity:environment/sky_temp_3 if predicate enmity:environment/in_overworld unless score @s enmity.temp matches ..-5 run scoreboard players remove @s enmity.temp 1
execute if predicate enmity:environment/sky_temp_3 if predicate enmity:environment/in_overworld unless score @s enmity.temp matches ..-5 run scoreboard players remove @s enmity.temp 1
execute if entity @e[type=item_frame,tag=enmity.cooling_coil,distance=..2] run scoreboard players remove @s enmity.temp 1
execute if entity @e[type=item_frame,tag=enmity.heating_coil,distance=..2] run scoreboard players add @s enmity.temp 1
execute if score @s enmity.temp matches -1.. if entity @e[type=item_frame,tag=enmity.cooling_coil,distance=..3] run scoreboard players remove @s enmity.temp 1
execute if score @s enmity.temp matches ..1 if entity @e[type=item_frame,tag=enmity.heating_coil,distance=..3] run scoreboard players add @s enmity.temp 1
execute if score @s enmity.temp matches -1.. if entity @e[type=item_frame,tag=enmity.cooling_coil,distance=..4.5] run scoreboard players remove @s enmity.temp 1
execute if score @s enmity.temp matches ..1 if entity @e[type=item_frame,tag=enmity.heating_coil,distance=..4.5] run scoreboard players add @s enmity.temp 1
execute if score @s enmity.temp matches -1.. if entity @e[type=item_frame,tag=enmity.cooling_coil,distance=..6] run scoreboard players remove @s enmity.temp 1
execute if score @s enmity.temp matches ..1 if entity @e[type=item_frame,tag=enmity.heating_coil,distance=..6] run scoreboard players add @s enmity.temp 1
execute if predicate enmity:entity/is_on_fire run scoreboard players add @s enmity.temp 10
execute if predicate enmity:environment/in_water run scoreboard players remove @s enmity.temp 1
execute if score @s enmity.temp matches 3.. if predicate enmity:environment/in_water run scoreboard players remove @s enmity.temp 1
execute if predicate enmity:environment/near_heating_blocks run scoreboard players add @s enmity.temp 1
execute if predicate enmity:environment/near_heating_blocks run scoreboard players add @s enmity.temp 1
execute if score @s enmity.temp matches -1.. if predicate enmity:environment/near_cooling_blocks run scoreboard players remove @s enmity.temp 1
execute if score @s enmity.temp matches -1.. if predicate enmity:environment/near_cooling_blocks run scoreboard players remove @s enmity.temp 1
execute if score @s enmity.temp matches -1.. if predicate enmity:environment/in_overworld if predicate enmity:environment/is_raining run scoreboard players remove @s enmity.temp 1
tag @s[tag=enmity.in_powder_snow] remove enmity.in_powder_snow
execute if block ~ ~ ~ powder_snow run tag @s add enmity.in_powder_snow
execute if block ~ ~1.8 ~ powder_snow run tag @s add enmity.in_powder_snow
scoreboard players remove @s[tag=enmity.in_powder_snow] enmity.temp 10

execute if score @s enmity.temp matches -1..1 if entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{Enmity.Thermometer:1}}}] run item replace entity @s weapon.mainhand with warped_fungus_on_a_stick{display:{Name:'{"text":"Thermometer","italic":false}'},Unbreakable:1,HideFlags:4,CustomModelData:31,Enmity:1,Enmity.Thermometer:1}
execute if score @s enmity.temp matches ..-3 if entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{Enmity.Thermometer:1}}}] run item replace entity @s weapon.mainhand with warped_fungus_on_a_stick{display:{Name:'{"text":"Thermometer","italic":false}'},Unbreakable:1,HideFlags:4,CustomModelData:29,Enmity:1,Enmity.Thermometer:1}
execute if score @s enmity.temp matches 3.. if entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{Enmity.Thermometer:1}}}] run item replace entity @s weapon.mainhand with warped_fungus_on_a_stick{display:{Name:'{"text":"Thermometer","italic":false}'},Unbreakable:1,HideFlags:4,CustomModelData:30,Enmity:1,Enmity.Thermometer:1}
execute if score @s enmity.temp matches 2 if entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{Enmity.Thermometer:1}}}] run item replace entity @s weapon.mainhand with warped_fungus_on_a_stick{display:{Name:'{"text":"Thermometer","italic":false}'},Unbreakable:1,HideFlags:4,CustomModelData:73,Enmity:1,Enmity.Thermometer:1}
execute if score @s enmity.temp matches -2 if entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{Enmity.Thermometer:1}}}] run item replace entity @s weapon.mainhand with warped_fungus_on_a_stick{display:{Name:'{"text":"Thermometer","italic":false}'},Unbreakable:1,HideFlags:4,CustomModelData:74,Enmity:1,Enmity.Thermometer:1}

execute if predicate enmity:entity/has_armor/wool_set run scoreboard players add @s enmity.temp 2
execute if predicate enmity:entity/has_effect/fire_resistance if score @s enmity.temp matches 1.. run scoreboard players set @s enmity.temp 0
scoreboard players set @s[nbt={Inventory:[{Slot:10b,id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:56}}]}] enmity.temp 0
scoreboard players set @s[nbt={Inventory:[{Slot:10b,id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:55}}]}] enmity.temp 0
execute if score @s enmity.temp matches 1.. run scoreboard players set @s[nbt={Inventory:[{Slot:12b,id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:82}}]}] enmity.temp 0
execute if score @s enmity.temp matches ..-1 run scoreboard players set @s[nbt={Inventory:[{Slot:12b,id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:81}}]}] enmity.temp 0
execute if score @s enmity.temp matches ..-1 run scoreboard players set @s[nbt={Inventory:[{Slot:12b,id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:107}}]}] enmity.temp 0
scoreboard players set @s[nbt={Inventory:[{Slot:10b,id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:76}}]}] enmity.temp 0
scoreboard players set @s[nbt={Inventory:[{Slot:10b,id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:77}}]}] enmity.temp 0
scoreboard players set @s[nbt={Inventory:[{Slot:10b,id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:78}}]}] enmity.temp 0
scoreboard players set @s[nbt={Inventory:[{Slot:12b,id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:119}}]}] enmity.temp 0
execute if score @s enmity.temp matches ..-5 if score @s enmity.temp_cd matches -19.. run scoreboard players remove @s enmity.temp_cd 1
execute if score @s enmity.temp matches ..-4 if score @s enmity.temp_cd matches -19.. run scoreboard players remove @s enmity.temp_cd 1
execute if score @s enmity.temp matches ..-3 if score @s enmity.temp_cd matches -19.. run scoreboard players remove @s enmity.temp_cd 1
execute if score @s enmity.temp matches 3.. if score @s enmity.temp_cd matches ..19 run scoreboard players add @s enmity.temp_cd 1
execute if score @s enmity.temp matches 4.. if score @s enmity.temp_cd matches ..19 run scoreboard players add @s enmity.temp_cd 1
execute if score @s enmity.temp matches 5.. if score @s enmity.temp_cd matches ..19 run scoreboard players add @s enmity.temp_cd 1
execute if score @s enmity.temp matches -2..2 if score @s enmity.temp_cd matches 1.. run scoreboard players remove @s enmity.temp_cd 1
execute if score @s enmity.temp matches -2..2 if score @s enmity.temp_cd matches ..-1 run scoreboard players add @s enmity.temp_cd 1
scoreboard players set @s[gamemode=!adventure,gamemode=!survival] enmity.temp_cd 0
scoreboard players set @s[scores={enmity.age=..1200}] enmity.temp_cd 0
execute unless score @s enmity.temp_cd matches -10..10 unless score @s enmity.temp matches -3..3 if score @s enmity.temp matches -4..4 run function enmity:misc/health_modification/temperature_damage