particle minecraft:enchant ~ ~ ~ 0.5 0.5 0.5 0 50 force
playsound block.enchantment_table.use block @a[distance=0..] ~ ~1 ~ 2 1 0
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:potion",tag:{Potion:"minecraft:regeneration"}}}]
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:ender_pearl",Count:8b}}]
kill @s
summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:warped_fungus_on_a_stick",Count:1,tag:{display:{Name:'{"text":"Healing Bolt","italic":false}',Lore:['[{"text":"Damage: ","italic":false,"color":"gray"},{"text":"-1","color":"white"}]','[{"text":"Mana usage: ","italic":false,"color":"gray"},{"text":"70","color":"white"}]','[{"text":"Cooldown: ","italic":false,"color":"gray"},{"text":"16","color":"white"}]','[{"text":"Shoots a magical bolt with rejuvenative powers.","italic":false,"color":"gray"}]']},Unbreakable:1,HideFlags:4,CustomModelData:122,Enmity:1,Enmity.CustomCrafting:1,Enmity.ItemGroups:["usable"]}}}