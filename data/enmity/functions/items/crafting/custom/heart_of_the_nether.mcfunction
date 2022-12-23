particle minecraft:enchant ~ ~ ~ 0.5 0.5 0.5 0 50 force
playsound block.enchantment_table.use block @a[distance=0..] ~ ~1 ~ 2 1 0
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",tag:{Enmity:1,CustomModelData:58}}}]
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",tag:{Enmity:1,CustomModelData:59}}}]
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",tag:{Enmity:1,CustomModelData:60}}}]
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",tag:{Enmity:1,CustomModelData:61}}}]
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:blaze_powder",Count:6b}}]
kill @s
summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:warped_fungus_on_a_stick",Count:1,tag:{display:{Name:'{"text":"Heart of the Nether","italic":false}',Lore:['[{"text":"Accessory type: ","italic":false,"color":"gray"},{"text":"strength","color":"white"}]','[{"text":"+2","color":"white","italic":false},{"text":" Magic damage","italic":false,"color":"gray"}]','[{"text":"+15%","color":"white","italic":false},{"text":" Attack damage","italic":false,"color":"gray"}]','[{"text":"+20%","color":"white","italic":false},{"text":" Attack speed","italic":false,"color":"gray"}]','[{"text":"Grants heat and cold resistance.","italic":false,"color":"gray"}]']},Unbreakable:1,HideFlags:4,CustomModelData:56,Enmity:1,Enmity.CustomCrafting:1,Enmity.ItemGroups:["accessories","strength"]}}}