particle minecraft:enchant ~ ~ ~ 0.5 0.5 0.5 0 50 force
playsound block.enchantment_table.use block @a[distance=0..] ~ ~1 ~ 2 1 0
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:3b,tag:{CustomModelData:7,Enmity:1}}}]
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:trident",Count:1b}}]
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:72,Enmity:1}}}]
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:3b,tag:{CustomModelData:8,Enmity:1}}}]
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:3b,tag:{CustomModelData:9,Enmity:1}}}]
kill @s
summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:warped_fungus_on_a_stick",Count:1,tag:{display:{Name:'{"text":"Liquidator","italic":false}',Lore:['[{"text":"Damage: ","italic":false,"color":"gray"},{"text":"13","color":"white"}]','[{"text":"Mana usage: ","italic":false,"color":"gray"},{"text":"120","color":"white"}]','[{"text":"Cooldown: ","italic":false,"color":"gray"},{"text":"12","color":"white"}]','[{"text":"Fires 5 super fast homing tridents","italic":false,"color":"gray"}]','[{"text":"that inflict damaging effects onto enemies.","italic":false,"color":"gray"}]']},Unbreakable:1,HideFlags:4,CustomModelData:39,Enmity:1,Enmity.ItemGroups:["usable","weapons"]}}}