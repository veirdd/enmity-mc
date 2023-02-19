particle minecraft:enchant ~ ~ ~ 0.5 0.5 0.5 0 50 force
playsound block.enchantment_table.use block @a[distance=0..] ~ ~1 ~ 2 1 0
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:2b,tag:{Enmity:1,CustomModelData:10}}}]
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:feather",Count:8b,tag:{Enmity:1,CustomModelData:1}}}]
kill @s
summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:warped_fungus_on_a_stick",Count:1,tag:{display:{Name:'{"text":"Magical Blaster","italic":false}',Lore:['[{"text":"Damage: ","italic":false,"color":"gray"},{"text":"9","color":"white"}]','[{"text":"Mana usage: ","italic":false,"color":"gray"},{"text":"30","color":"white"}]','[{"text":"Cooldown: ","italic":false,"color":"gray"},{"text":"4","color":"white"}]','[{"text":"Rapidly fires fast mana energy bullets.","italic":false,"color":"gray"}]']},Unbreakable:1,HideFlags:4,CustomModelData:128,Enmity:1,Enmity.ItemGroups:["usable","weapons","guns"]}}}