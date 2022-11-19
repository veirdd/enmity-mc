particle minecraft:enchant ~ ~ ~ 0.5 0.5 0.5 0 50 force
playsound block.enchantment_table.use block @a[distance=0..] ~ ~1 ~ 2 1 0
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:3b,tag:{Enmity:1,CustomModelData:8}}}]
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:nether_star",Count:2b}}]
kill @s
summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:leather_boots",Count:1,tag:{display:{Name:'{"text":"Crystalline Boots","italic":false}',color:13731547,Lore:['[{"text":"Set bonus: ","italic":false,"color":"gray"},{"text":"dependent on headpiece","color":"white"}]']},Unbreakable:1,HideFlags:4,Enmity:1,Enmity.CustomCrafting:1,Enmity.ArmorType:"crystalline",AttributeModifiers:[{AttributeName:"generic.armor",Name:"",Amount:3.0,Operation:0,UUID:[I;1,1,1,1],Slot:"feet"},{AttributeName:"generic.armor_toughness",Name:"",Amount:3.0,Operation:0,UUID:[I;1,1,1,1],Slot:"feet"}],Enmity.ItemGroups:["armor"]}}}