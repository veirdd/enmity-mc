particle minecraft:enchant ~ ~ ~ 0.5 0.5 0.5 0 50 force
playsound block.enchantment_table.use block @a[distance=0..] ~ ~1 ~ 2 1 0
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:4b,tag:{Enmity:1,CustomModelData:10}}}]
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:red_sand",Count:16b}}]
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",tag:{Enmity:1,CustomModelData:91}}}]
kill @s
summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:warped_fungus_on_a_stick",Count:1,tag:{display:{Name:'{"text":"Primordial Eruption","italic":false}',Lore:['[{"text":"Damage: ","italic":false,"color":"gray"},{"text":"27","color":"white"}]','[{"text":"Mana usage: ","italic":false,"color":"gray"},{"text":"90","color":"white"}]','[{"text":"Cooldown: ","italic":false,"color":"gray"},{"text":"12","color":"white"}]','[{"text":"Creates a large ancient blast of dust.","italic":false,"color":"gray"}]']},Enmity:1,Unbreakable:1,HideFlags:4,CustomModelData:90,Enmity.ItemGroups:["usable","weapons"]}}}