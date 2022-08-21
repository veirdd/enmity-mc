particle minecraft:enchant ~ ~ ~ 0.5 0.5 0.5 0 50 force
playsound block.enchantment_table.use block @a[distance=0..] ~ ~1 ~ 2 1 0
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:4b,tag:{Enmity:1,CustomModelData:9}}}]
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:amethyst_shard",Count:8b}}]
kill @s
summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:warped_fungus_on_a_stick",Count:1,tag:{display:{Name:'{"text":"Crystal Storm","italic":false}',Lore:['[{"text":"Damage: ","italic":false,"color":"gray"},{"text":"6","color":"white"}]','[{"text":"Mana usage: ","italic":false,"color":"gray"},{"text":"30","color":"white"}]','[{"text":"Cooldown: ","italic":false,"color":"gray"},{"text":"4","color":"white"}]','[{"text":"Shoots a barrage of crystal shards.","italic":false,"color":"gray"}]']},Unbreakable:1,HideFlags:4,CustomModelData:32,Enmity:1}}}