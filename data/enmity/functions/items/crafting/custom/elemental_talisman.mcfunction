particle minecraft:enchant ~ ~ ~ 0.5 0.5 0.5 0 50 force
playsound block.enchantment_table.use block @a[distance=0..] ~ ~1 ~ 2 1 0
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:3b,tag:{Enmity:1,CustomModelData:7}}}]
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:5b,tag:{Enmity:1,CustomModelData:10}}}]
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:nether_star",Count:5b}}]
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",tag:{Enmity:1,CustomModelData:63}}}]
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",tag:{Enmity:1,CustomModelData:23}}}]
kill @s
summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:warped_fungus_on_a_stick",Count:1,tag:{display:{Name:'{"text":"Elemental Talisman","italic":false}',Lore:['[{"text":"Accessory type: ","italic":false,"color":"gray"},{"text":"mana","color":"white"}]','[{"text":"+80/s","color":"white","italic":false},{"text":" Mana regeneration","italic":false,"color":"gray"}]','[{"text":"+800","color":"white","italic":false},{"text":" Mana capacity","italic":false,"color":"gray"}]','[{"text":"+1","color":"white","italic":false},{"text":" Sentry slot","italic":false,"color":"gray"}]','[{"text":"Restores mana upon taking damage.","italic":false,"color":"gray"}]','[{"text":"Grants Night Vision, even in the Deep Dark.","italic":false,"color":"gray"}]']},Unbreakable:1,HideFlags:4,CustomModelData:64,Enmity:1}}}