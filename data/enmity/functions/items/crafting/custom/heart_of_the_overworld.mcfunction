particle minecraft:enchant ~ ~ ~ 0.5 0.5 0.5 0 50 force
playsound block.enchantment_table.use block @a[distance=0..] ~ ~1 ~ 2 1 0
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",tag:{Enmity:1,CustomModelData:51}}}]
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",tag:{Enmity:1,CustomModelData:52}}}]
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",tag:{Enmity:1,CustomModelData:53}}}]
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",tag:{Enmity:1,CustomModelData:54}}}]
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:blaze_powder",Count:6b}}]
kill @s
summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:warped_fungus_on_a_stick",Count:1,tag:{display:{Name:'{"text":"Heart of the Overworld","italic":false}',Lore:['[{"text":"Accessory type: ","italic":false,"color":"gray"},{"text":"strength","color":"white"}]','[{"text":"+1","color":"white","italic":false},{"text":" Magic damage reduction","italic":false,"color":"gray"}]','[{"text":"+2","color":"white","italic":false},{"text":" Health","italic":false,"color":"gray"}]','[{"text":"+2","color":"white","italic":false},{"text":" Armor","italic":false,"color":"gray"}]','[{"text":"Slowly restores health.","italic":false,"color":"gray"}]','[{"text":"Grants cold resistance.","italic":false,"color":"gray"}]']},Unbreakable:1,HideFlags:4,CustomModelData:55,Enmity:1,Enmity.CustomCrafting:1,Enmity.ItemGroups:["accessories"]}}}