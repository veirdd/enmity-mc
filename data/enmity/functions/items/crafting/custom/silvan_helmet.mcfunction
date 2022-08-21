particle minecraft:enchant ~ ~ ~ 0.5 0.5 0.5 0 50 force
playsound block.enchantment_table.use block @a[distance=0..] ~ ~1 ~ 2 1 0
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:wheat_seeds",Count:8b}}]
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:chainmail_helmet",Count:1b}}]
kill @s
summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:leather_helmet",Count:1,tag:{display:{Name:'{"text":"Silvan Helmet","italic":false}',color:6071585,Lore:['[{"text":"Set bonus:","italic":false,"color":"gray"}]','[{"text":"   +1","color":"white","italic":false},{"text":" Sentry slot","italic":false,"color":"gray"}]','[{"text":"   +1","color":"white","italic":false},{"text":" Magic damage reduction","italic":false,"color":"gray"}]']},Unbreakable:1,Enmity:1,Enmity.ArmorType:"silvan",AttributeModifiers:[{AttributeName:"generic.armor",Name:"0",Amount:2.0,Operation:0,UUID:[I;1,1,1,4],Slot:"head"}]}}}