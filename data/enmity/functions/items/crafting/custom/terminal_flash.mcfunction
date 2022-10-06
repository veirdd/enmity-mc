particle minecraft:enchant ~ ~ ~ 0.5 0.5 0.5 0 50 force
playsound block.enchantment_table.use block @a[distance=0..] ~ ~1 ~ 2 1 0
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:3b,tag:{CustomModelData:7,Enmity:1}}}]
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:popped_chorus_fruit",Count:12b}}]
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:nether_star",Count:5b}}]
kill @s
summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:warped_fungus_on_a_stick",Count:1,tag:{display:{Name:'{"text":"Terminal Flash","italic":false}',Lore:['[{"text":"Damage: ","italic":false,"color":"gray"},{"text":"22","color":"white"}]','[{"text":"Mana usage: ","italic":false,"color":"gray"},{"text":"150","color":"white"}]','[{"text":"Cooldown: ","italic":false,"color":"gray"},{"text":"24","color":"white"}]','[{"text":"Casts a controllable glow that expands","italic":false,"color":"gray"}]','[{"text":"into a powerful homing variant.","italic":false,"color":"gray"}]']},Unbreakable:1,HideFlags:4,CustomModelData:40,Enmity:1}}}