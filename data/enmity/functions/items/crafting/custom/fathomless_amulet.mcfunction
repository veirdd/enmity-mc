particle minecraft:enchant ~ ~ ~ 0.5 0.5 0.5 0 50 force
playsound block.enchantment_table.use block @a[distance=0..] ~ ~1 ~ 2 1 0
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",tag:{Enmity:1,CustomModelData:81}}}]
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:echo_shard",Count:4b}}]
kill @s
summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:warped_fungus_on_a_stick",Count:1,tag:{display:{Name:'{"text":"Fathomless Amulet","italic":false}',Lore:['[{"text":"Accessory type: ","italic":false,"color":"gray"},{"text":"effect","color":"white"}]','[{"text":"Grants Night Vision, even in the Deep Dark.","italic":false,"color":"gray"}]','[{"text":"Grants immunity to Darkness.","italic":false,"color":"gray"}]','[{"text":"Grants cold resistance.","italic":false,"color":"gray"}]']},Unbreakable:1,HideFlags:4,CustomModelData:107,Enmity:1,Enmity.ItemGroups:["accessories"]}}}