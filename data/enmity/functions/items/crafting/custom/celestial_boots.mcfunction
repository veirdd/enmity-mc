particle minecraft:enchant ~ ~ ~ 0.5 0.5 0.5 0 50 force
playsound block.enchantment_table.use block @a[distance=0..] ~ ~1 ~ 2 1 0
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:3b,tag:{Enmity:1,CustomModelData:7}}}]
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:4b,tag:{Enmity:1,CustomModelData:9}}}]
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:popped_chorus_fruit",Count:10b}}]
kill @s
summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:leather_boots",Count:1,tag:{display:{Name:'{"text":"Celestial Boots","italic":false}',color:4142930,Lore:['[{"text":"Set bonus: ","italic":false,"color":"gray"},{"text":"dependent on headpiece","color":"white"}]']},Unbreakable:1,Enmity:1,Enmity.ArmorType:"celestial",AttributeModifiers:[{AttributeName:"generic.armor",Name:"",Amount:6.0,Operation:0,UUID:[I;1,1,1,1],Slot:"feet"},{AttributeName:"generic.armor_toughness",Name:"",Amount:5.0,Operation:0,UUID:[I;1,1,1,1],Slot:"feet"}],Enmity.ItemGroups:["armor"]}}}