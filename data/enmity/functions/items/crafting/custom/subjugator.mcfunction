particle minecraft:enchant ~ ~ ~ 0.5 0.5 0.5 0 50 force
playsound block.enchantment_table.use block @a[distance=0..] ~ ~1 ~ 2 1 0
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:3b,tag:{CustomModelData:7,Enmity:1}}}]
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:2b,tag:{CustomModelData:8,Enmity:1}}}]
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:2b,tag:{CustomModelData:9,Enmity:1}}}]
kill @s
summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:warped_fungus_on_a_stick",Count:1,tag:{display:{Name:'{"text":"Subjugator","italic":false}',Lore:['[{"text":"Mode: ","italic":false,"color":"gray"},{"text":"capture","color":"white"}]','[{"text":"Mana usage: ","italic":false,"color":"gray"},{"text":"500","color":"white"}]','[{"text":"Captures entities in a forcefield projection.","italic":false,"color":"gray"}]','[{"text":"Use while sneaking to switch between modes.","italic":false,"color":"gray"}]']},Unbreakable:1,HideFlags:4,CustomModelData:108,Enmity:1,Enmity.ItemGroups:["usable","tools"]}}}