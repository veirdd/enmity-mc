particle minecraft:enchant ~ ~ ~ 0.5 0.5 0.5 0 50 force
playsound block.enchantment_table.use block @a[distance=0..] ~ ~1 ~ 2 1 0
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:3b,tag:{Enmity:1,CustomModelData:7}}}]
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:6b,tag:{Enmity:1,CustomModelData:9}}}]
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:popped_chorus_fruit",Count:16b}}]
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",tag:{Enmity:1,CustomModelData:50}}}]
kill @s
summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:warped_fungus_on_a_stick",Count:1,tag:{display:{Name:'{"text":"Sacred Storm","italic":false}',Lore:['[{"text":"Damage: ","italic":false,"color":"gray"},{"text":"12","color":"white"}]','[{"text":"Mana usage: ","italic":false,"color":"gray"},{"text":"300","color":"white"}]','[{"text":"Cooldown: ","italic":false,"color":"gray"},{"text":"20","color":"white"}]','[{"text":"Summons a sigil that strikes enemies with beams.","italic":false,"color":"gray"}]']},Unbreakable:1,HideFlags:4,CustomModelData:83,Enmity:1}}}