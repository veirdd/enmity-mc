particle minecraft:enchant ~ ~ ~ 0.5 0.5 0.5 0 50 force
playsound block.enchantment_table.use block @a[distance=0..] ~ ~1 ~ 2 1 0
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:magma_cream",Count:4b}}]
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:netherite_scrap",Count:2b}}]
kill @s
summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:leather_boots",Count:1,tag:{display:{Name:'{"text":"Molten Boots","italic":false}',color:5376512,Lore:['[{"text":"Set bonus:","italic":false,"color":"gray"}]','[{"text":"   +1","color":"white","italic":false},{"text":" Magic damage","italic":false,"color":"gray"}]','[{"text":"   +2","color":"white","italic":false},{"text":" Magic damage reduction","italic":false,"color":"gray"}]','[{"text":"   Grants Fire Resistance.","italic":false,"color":"gray"}]']},Unbreakable:1,Enmity:1,Enmity.ArmorType:"molten",AttributeModifiers:[{AttributeName:"generic.armor",Name:"0",Amount:3.0,Operation:0,UUID:[I;1,1,1,1],Slot:"feet"},{AttributeName:"generic.armor_toughness",Name:"0",Amount:2.0,Operation:0,UUID:[I;1,1,1,1],Slot:"feet"}]}}}