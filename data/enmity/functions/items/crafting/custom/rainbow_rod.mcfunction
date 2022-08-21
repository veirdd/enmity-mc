particle minecraft:enchant ~ ~ ~ 0.5 0.5 0.5 0 50 force
playsound block.enchantment_table.use block @a[distance=0..] ~ ~1 ~ 2 1 0
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:6b,tag:{Enmity:1,CustomModelData:8}}}]
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:3b,tag:{Enmity:1,CustomModelData:10}}}]
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:amethyst_shard",Count:10b}}]
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:ghast_tear",Count:2b}}]
kill @s
summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:warped_fungus_on_a_stick",Count:1,tag:{display:{Name:'{"text":"Rainbow Rod","italic":false}',Lore:['[{"text":"Damage: ","italic":false,"color":"gray"},{"text":"30","color":"white"}]','[{"text":"Mana usage: ","italic":false,"color":"gray"},{"text":"80","color":"white"}]','[{"text":"Cooldown: ","italic":false,"color":"gray"},{"text":"16","color":"white"}]','[{"text":"Casts a controllable rainbow bolt.","italic":false,"color":"gray"}]']},Enmity:1,Unbreakable:1,HideFlags:4,CustomModelData:37}}}