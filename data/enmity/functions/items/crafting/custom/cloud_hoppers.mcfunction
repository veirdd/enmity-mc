particle minecraft:enchant ~ ~ ~ 0.5 0.5 0.5 0 50 force
playsound block.enchantment_table.use block @a[distance=0..] ~ ~1 ~ 2 1 0
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:ghast_tear",Count:1b}}]
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Enmity:1,CustomModelData:44}}}]
kill @s
summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:warped_fungus_on_a_stick",Count:1,tag:{display:{Name:'{"text":"Cloud Hoppers","italic":false}',Lore:['[{"text":"Accessory type: ","italic":false,"color":"gray"},{"text":"mobility","color":"white"}]','[{"text":"Increases movement speed.","italic":false,"color":"gray"}]','[{"text":"Click sneak to double jump.","italic":false,"color":"gray"}]','[{"text":"Grants Slow Falling after performing a double jump.","italic":false,"color":"gray"}]','[{"text":"Look directly down to cancel the effect.","italic":false,"color":"gray"}]','[{"text":"Disables Levitation.","italic":false,"color":"gray"}]']},Unbreakable:1,HideFlags:4,CustomModelData:86,Enmity:1,Enmity.CustomCrafting:1}}}