particle minecraft:enchant ~ ~ ~ 0.5 0.5 0.5 0 50 force
playsound block.enchantment_table.use block @a[distance=0..] ~ ~1 ~ 2 1 0
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:6b,tag:{CustomModelData:2,Enmity:1}}}]
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:3b,tag:{CustomModelData:1,Enmity:1}}}]
kill @s
summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:leather_helmet",Count:1,tag:{display:{Name:'{"text":"Witherbone Helmet","italic":false}',color:3355443,Lore:['[{"text":"Set bonus:","italic":false,"color":"gray"}]','[{"text":"   +2","italic":false,"color":"white"},{"text":" Magic damage","italic":false,"color":"gray"}]','[{"text":"   +1","italic":false,"color":"white"},{"text":" Magic damage reduction","italic":false,"color":"gray"}]','[{"text":"   Has a chance to remove Wither.","italic":false,"color":"gray"}]']},Unbreakable:1,Enmity:1,Enmity.ArmorType:"witherbone",AttributeModifiers:[{AttributeName:"generic.armor",Name:"0",Amount:2.0,Operation:0,UUID:[I;1,1,1,4],Slot:"head"},{AttributeName:"generic.armor_toughness",Name:"0",Amount:2.5,Operation:0,UUID:[I;1,1,1,4],Slot:"head"}]}}}