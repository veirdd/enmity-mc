particle minecraft:enchant ~ ~ ~ 0.5 0.5 0.5 0 50 force
playsound block.enchantment_table.use block @a[distance=0..] ~ ~1 ~ 2 1 0
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:4b,tag:{Enmity:1,CustomModelData:8}}}]
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:amethyst_shard",Count:20b}}]
kill @s
summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:warped_fungus_on_a_stick",Count:1,tag:{display:{Name:'{"text":"Crystalline Twig","italic":false}',Lore:['[{"text":"Damage: ","italic":false,"color":"gray"},{"text":"6","color":"white"}]','[{"text":"Mana usage: ","italic":false,"color":"gray"},{"text":"30/s","color":"white"}]','[{"text":"Cooldown: ","italic":false,"color":"gray"},{"text":"28","color":"white"}]','[{"text":"Creates a volatile crystalline cluster","italic":false,"color":"gray"}]','[{"text":"that grows and shatters at enemies.","italic":false,"color":"gray"}]']},Unbreakable:1,HideFlags:4,CustomModelData:117,Enmity:1,Enmity.CustomCrafting:1,Enmity.ItemGroups:["usable","weapons"]}}}