particle minecraft:enchant ~ ~ ~ 0.5 0.5 0.5 0 50 force
playsound block.enchantment_table.use block @a[distance=0..] ~ ~1 ~ 2 1 0
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",tag:{Enmity:1,CustomModelData:38}}}]
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",tag:{Enmity:1,CustomModelData:2}}}]
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",tag:{Enmity:1,CustomModelData:66}}}]
kill @e[type=item,distance=..0.5,limit=1,nbt={Item:{id:"minecraft:amethyst_shard",Count:8b}}]
kill @e[type=item,distance=..0.5,limit=1,nbt={Item:{id:"minecraft:firework_star",tag:{CustomModelData:2},Count:16b}}]
kill @s
summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:warped_fungus_on_a_stick",Count:1,tag:{display:{Name:'{"text":"Night\'s Ray","italic":false}',Lore:['[{"text":"Damage: ","italic":false,"color":"gray"},{"text":"7","color":"white"}]','[{"text":"Mana usage: ","italic":false,"color":"gray"},{"text":"50","color":"white"}]','[{"text":"Cooldown: ","italic":false,"color":"gray"},{"text":"12","color":"white"}]','[{"text":"Fires a ray of dark energy.","italic":false,"color":"gray"}]']},Unbreakable:1,HideFlags:4,CustomModelData:26,Enmity:1}}}