particle minecraft:enchant ~ ~ ~ 0.5 0.5 0.5 0 50 force
playsound block.enchantment_table.use block @a[distance=0..] ~ ~1 ~ 2 1 0
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:nether_star",Count:3b}}]
kill @s
summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:warped_fungus_on_a_stick",Count:1,tag:{display:{Name:'{"text":"Cloud Staff","italic":false}',Lore:['[{"text":"Damage: ","italic":false,"color":"gray"},{"text":"7","color":"white"}]','[{"text":"Mana usage: ","italic":false,"color":"gray"},{"text":"180","color":"white"}]','[{"text":"Cooldown: ","italic":false,"color":"gray"},{"text":"16","color":"white"}]','[{"text":"Summons an ominous looking cloud.","italic":false,"color":"gray"}]']},Unbreakable:1,HideFlags:4,CustomModelData:85,Enmity:1}}}