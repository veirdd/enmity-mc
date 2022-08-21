particle minecraft:enchant ~ ~ ~ 0.5 0.5 0.5 0 50 force
playsound block.enchantment_table.use block @a[distance=0..] ~ ~1 ~ 2 1 0
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:nether_star",Count:3b}}]
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:lapis_lazuli",Count:1b}}]
kill @s
summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:warped_fungus_on_a_stick",Count:1,tag:{display:{Name:'{"text":"Potent Mana Ring","italic":false}',Lore:['[{"text":"Accessory type: ","italic":false,"color":"gray"},{"text":"mana","color":"white"}]','[{"text":"+1","italic":false,"color":"white"},{"text":" Mana regeneration","italic":false,"color":"gray"}]','[{"text":"+400","italic":false,"color":"white"},{"text":" Mana capacity","italic":false,"color":"gray"}]']},Unbreakable:1,HideFlags:4,CustomModelData:20,Enmity:1,Enmity.CustomCrafting:1}}}