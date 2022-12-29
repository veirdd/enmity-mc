particle minecraft:enchant ~ ~ ~ 0.5 0.5 0.5 0 50 force
playsound block.enchantment_table.use block @a[distance=0..] ~ ~1 ~ 2 1 0
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:6b,tag:{Enmity:1,CustomModelData:8}}}]
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:3b,tag:{Enmity:1,CustomModelData:10}}}]
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Enmity:1,CustomModelData:36}}}]
kill @s
summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:warped_fungus_on_a_stick",Count:1,tag:{display:{Name:'{"text":"Circle of Vigour","italic":false}',Lore:['[{"text":"Mana usage: ","italic":false,"color":"gray"},{"text":"40/s","color":"white"}]','[{"text":"Cooldown: ","italic":false,"color":"gray"},{"text":"80","color":"white"}]','[{"text":"Conjures a field of regenerative magic.","italic":false,"color":"gray"}]']},Unbreakable:1,HideFlags:4,CustomModelData:123,Enmity:1,Enmity.CustomCrafting:1,Enmity.ItemGroups:["usable"]}}}