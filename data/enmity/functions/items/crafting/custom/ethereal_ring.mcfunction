particle minecraft:enchant ~ ~ ~ 0.5 0.5 0.5 0 50 force
playsound block.enchantment_table.use block @a[distance=0..] ~ ~1 ~ 2 1 0
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",tag:{Enmity:1,CustomModelData:21}}}]
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:3b,tag:{Enmity:1,CustomModelData:8}}}]
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:3b,tag:{Enmity:1,CustomModelData:9}}}]
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",tag:{Enmity:1,CustomModelData:33}}}]
kill @s
summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:warped_fungus_on_a_stick",Count:1,tag:{display:{Name:'{"text":"Ethereal Ring","italic":false}',Lore:['[{"text":"Accessory type: ","italic":false,"color":"gray"},{"text":"mana","color":"white"}]','[{"text":"+40/s","color":"white","italic":false},{"text":" Mana regeneration","italic":false,"color":"gray"}]','[{"text":"+400","color":"white","italic":false},{"text":" Mana capacity","italic":false,"color":"gray"}]','[{"text":"Grants Night Vision.","italic":false,"color":"gray"}]']},Unbreakable:1,HideFlags:4,CustomModelData:22,Enmity:1,Enmity.CustomCrafting:1}}}