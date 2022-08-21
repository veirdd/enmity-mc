particle minecraft:enchant ~ ~ ~ 0.5 0.5 0.5 0 50 force
playsound block.enchantment_table.use block @a[distance=0..] ~ ~1 ~ 2 1 0
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:iron_axe",Count:1b}}]
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:iron_hoe",Count:1b}}]
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:iron_pickaxe",Count:1b}}]
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:iron_shovel",Count:1b}}]
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:dripstone_block",Count:16b}}]
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Enmity:1,CustomModelData:2}}}]
kill @s
summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:warped_fungus_on_a_stick",Count:1,tag:{display:{Name:'{"text":"Dripstone Digger","italic":false}',Lore:['[{"text":"Mining speed: ","italic":false,"color":"gray"},{"text":"1.7","color":"white"}]','[{"text":"Mana usage: ","italic":false,"color":"gray"},{"text":"30","color":"white"}]','[{"text":"Range: ","italic":false,"color":"gray"},{"text":"6","color":"white"}]','[{"text":"Mining power: ","italic":false,"color":"gray"},{"text":"iron","color":"white"}]','[{"text":"Destroys blocks using magic.","italic":false,"color":"gray"}]']},Unbreakable:1,HideFlags:4,CustomModelData:101,Enmity:1,Enmity.CustomCrafting:1}}}