particle minecraft:enchant ~ ~ ~ 0.5 0.5 0.5 0 50 force
playsound block.enchantment_table.use block @a[distance=0..] ~ ~1 ~ 2 1 0
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:gold_ingot",Count:5b}}]
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:emerald",Count:1b}}]
kill @s
summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:warped_fungus_on_a_stick",Count:1,tag:{display:{Name:'{"text":"Silvan Necklace","italic":false}',Lore:['[{"text":"Accessory type: ","italic":false,"color":"gray"},{"text":"mana","color":"white"}]','[{"text":"+10/s","italic":false,"color":"white"},{"text":" Mana regeneration","italic":false,"color":"gray"}]','[{"text":"+1","italic":false,"color":"white"},{"text":" Sentry slot","italic":false,"color":"gray"}]']},Unbreakable:1,HideFlags:4,CustomModelData:23,Enmity:1,Enmity.CustomCrafting:1}}}