particle minecraft:enchant ~ ~ ~ 0.5 0.5 0.5 0 50 force
playsound block.enchantment_table.use block @a[distance=0..] ~ ~1 ~ 2 1 0
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:clock",Count:1b}}]
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{tag:{Enmity.Thermometer:1},Count:1b}}]
kill @s
summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:warped_fungus_on_a_stick",Count:1,tag:{display:{Name:'{"text":"Calculator","italic":false}',Lore:['{"text":"Displays coordinates and other parameters.","color":"gray","italic":false}']},Unbreakable:1,HideFlags:4,CustomModelData:97,Enmity:1}}}