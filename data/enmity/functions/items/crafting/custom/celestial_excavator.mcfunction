particle minecraft:enchant ~ ~ ~ 0.5 0.5 0.5 0 50 force
playsound block.enchantment_table.use block @a[distance=0..] ~ ~1 ~ 2 1 0
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:3b,tag:{Enmity:1,CustomModelData:7}}}]
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:popped_chorus_fruit",Count:8b}}]
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:end_stone",Count:16b}}]
kill @s
summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:warped_fungus_on_a_stick",Count:1,tag:{display:{Name:'{"text":"Celestial Excavator","italic":false}',Lore:['[{"text":"Mining speed: ","italic":false,"color":"gray"},{"text":"20","color":"white"},{"text":"/","color":"gray"},{"text":"5","color":"white"},{"text":" (auto)","color":"gray"}]','[{"text":"Mana usage: ","italic":false,"color":"gray"},{"text":"10-30","color":"white"}]','[{"text":"Range: ","italic":false,"color":"gray"},{"text":"16","color":"white"}]','[{"text":"Mining power: ","italic":false,"color":"gray"},{"text":"diamond","color":"white"}]','[{"text":"Destroys blocks using magic.","italic":false,"color":"gray"}]']},Unbreakable:1,HideFlags:4,CustomModelData:104}}}