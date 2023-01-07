particle minecraft:enchant ~ ~ ~ 0.5 0.5 0.5 0 50 force
playsound block.enchantment_table.use block @a[distance=0..] ~ ~1 ~ 2 1 0
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:diamond",Count:2b}}]
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:netherite_ingot",Count:2b}}]
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:iron_ingot",Count:8b}}]
kill @s
summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:warped_fungus_on_a_stick",Count:1,tag:{display:{Name:'{"text":"Shield Capacitor","italic":false}',Lore:['[{"text":"Accessory type: ","italic":false,"color":"gray"},{"text":"effect","color":"white"}]','[{"text":"Allows you to deflect magic damage once.","italic":false,"color":"gray"}]','[{"text":"Deflecting damage disables the protection.","italic":false,"color":"gray"}]','[{"text":"You must wait 2 minutes to recharge the shield.","italic":false,"color":"gray"}]','[{"text":"Recharging is disrupted if you take magic damage.","italic":false,"color":"gray"}]']},Unbreakable:1,HideFlags:4,CustomModelData:125,Enmity:1,Enmity.ItemGroups:["accessories","effect"]}}}