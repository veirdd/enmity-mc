particle minecraft:enchant ~ ~ ~ 0.5 0.5 0.5 0 50 force
playsound block.enchantment_table.use block @a[distance=0..] ~ ~1 ~ 2 1 0
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:prismarine_shard",Count:5b}}]
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:diamond_boots",Count:1b}}]
kill @s
summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:leather_boots",Count:1,tag:{display:{Name:'{"text":"Tidal Boots","italic":false}',color:6860704,Lore:['[{"text":"Set bonus: ","italic":false,"color":"gray"},{"text":"dependent on headpiece","color":"white"}]']},Unbreakable:1,Enmity:1,Enmity.ArmorType:"tidal",AttributeModifiers:[{AttributeName:"generic.armor",Name:"",Amount:5.0,Operation:0,UUID:[I;1,1,1,1],Slot:"feet"},{AttributeName:"generic.armor_toughness",Name:"",Amount:4.0,Operation:0,UUID:[I;1,1,1,1],Slot:"feet"}]}}}