particle minecraft:enchant ~ ~ ~ 0.5 0.5 0.5 0 50 force
playsound block.enchantment_table.use block @a[distance=0..] ~ ~1 ~ 2 1 0
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:diamond_helmet",Count:1b}}]
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:prismarine_shard",Count:5b}}]
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:glowstone_dust",Count:1b}}]
kill @s
summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:leather_helmet",Count:1,tag:{display:{Name:'{"text":"Tidal Mage Helmet","italic":false}',color:6860704,Lore:['[{"text":"Set bonus:","italic":false,"color":"gray"}]','[{"text":"   +6","italic":false,"color":"white"},{"text":" Magic damage","italic":false,"color":"gray"}]','[{"text":"   +4","italic":false,"color":"white"},{"text":" Magic damage reduction","italic":false,"color":"gray"}]','[{"text":"   +8","italic":false,"color":"white"},{"text":" Health","italic":false,"color":"gray"}]','[{"text":"   Grants Conduit Power.","italic":false,"color":"gray"}]']},Unbreakable:1,Enmity:1,Enmity.ArmorType:"tidal",Enmity.ArmorSubType:"mage",AttributeModifiers:[{AttributeName:"generic.armor",Name:"0",Amount:5.0,Operation:0,UUID:[I;1,1,1,4],Slot:"head"},{AttributeName:"generic.armor_toughness",Name:"0",Amount:4.0,Operation:0,UUID:[I;1,1,1,4],Slot:"head"}]}}}