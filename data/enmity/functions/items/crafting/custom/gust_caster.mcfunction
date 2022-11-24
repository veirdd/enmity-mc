particle minecraft:enchant ~ ~ ~ 0.5 0.5 0.5 0 50 force
playsound block.enchantment_table.use block @a[distance=0..] ~ ~1 ~ 2 1 0
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:5b,tag:{CustomModelData:5,Enmity:1}}}]
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:prismarine_shard",Count:8b}}]
kill @s
summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:warped_fungus_on_a_stick",Count:1,tag:{display:{Name:'{"text":"Gust Caster","italic":false}',Lore:['[{"text":"Damage: ","italic":false,"color":"gray"},{"text":"7","color":"white"}]','[{"text":"Mana usage: ","italic":false,"color":"gray"},{"text":"100","color":"white"}]','[{"text":"Cooldown: ","italic":false,"color":"gray"},{"text":"24","color":"white"}]','[{"text":"Fires a short ranged whirlwind.","italic":false,"color":"gray"}]']},Unbreakable:1,HideFlags:4,CustomModelData:3,Enmity:1,Enmity.CustomCrafting:1,Enmity.ItemGroups:["usable","weapons"]}}}