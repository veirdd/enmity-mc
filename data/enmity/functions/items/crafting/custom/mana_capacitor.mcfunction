particle minecraft:enchant ~ ~ ~ 0.5 0.5 0.5 0 50 force
playsound block.enchantment_table.use block @a[distance=0..] ~ ~1 ~ 2 1 0
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:10b,tag:{CustomModelData:1,Enmity:1}}}]
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:blaze_powder",Count:8b}}]
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:nether_star",Count:3b}}]
kill @s
summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:warped_fungus_on_a_stick",Count:1,tag:{display:{Name:'{"text":"Mana Capacitor","italic":false}',Lore:['[{"text":"Accessory type: ","italic":false,"color":"gray"},{"text":"mana","color":"white"}]','[{"text":"+8","color":"white","italic":false},{"text":" Mana regeneration","italic":false,"color":"gray"}]','[{"text":"+800","color":"white","italic":false},{"text":" Mana capacity","italic":false,"color":"gray"}]','[{"text":"-50%","color":"white","italic":false},{"text":" Magic cooldown","italic":false,"color":"gray"}]','[{"text":"+5","color":"white","italic":false},{"text":" Magic damage","italic":false,"color":"gray"}]','[{"text":"Converts nearly all of your life into magic power.","italic":false,"color":"gray"}]']},Unbreakable:1,HideFlags:4,CustomModelData:114,Enmity:1}}}