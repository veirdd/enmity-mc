particle minecraft:enchant ~ ~ ~ 0.5 0.5 0.5 0 50 force
playsound block.enchantment_table.use block @a[distance=0..] ~ ~1 ~ 2 1 0
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",tag:{Enmity:1,CustomModelData:82}}}]
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:magma_cream",Count:2b}}]
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:prismarine_crystals",Count:2b}}]
kill @s
summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:warped_fungus_on_a_stick",Count:1,tag:{display:{Name:'{"text":"Frostfire Charm","italic":false}',Lore:['[{"text":"Accessory type: ","italic":false,"color":"gray"},{"text":"effect","color":"white"}]','[{"text":"Grants heat and cold resistance.","italic":false,"color":"gray"}]']},Unbreakable:1,HideFlags:4,CustomModelData:119,Enmity:1,Enmity.CustomCrafting:1,Enmity.ItemGroups:["accessories","effect"]}}}