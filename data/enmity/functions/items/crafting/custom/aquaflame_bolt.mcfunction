particle minecraft:enchant ~ ~ ~ 0.5 0.5 0.5 0 50 force
playsound block.enchantment_table.use block @a[distance=0..] ~ ~1 ~ 2 1 0
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",tag:{Enmity:1,CustomModelData:4}}}]
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:3b,tag:{Enmity:1,CustomModelData:8}}}]
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:3b,tag:{Enmity:1,CustomModelData:9}}}]
kill @s
summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:warped_fungus_on_a_stick",Count:1,tag:{display:{Name:'{"text":"Aquaflame Bolt","italic":false}',Lore:['[{"text":"Damage: ","italic":false,"color":"gray"},{"text":"8","color":"white"}]','[{"text":"Mana usage: ","italic":false,"color":"gray"},{"text":"60","color":"white"}]','[{"text":"Cooldown: ","italic":false,"color":"gray"},{"text":"8","color":"white"}]','[{"text":"Rapidly shoots homing aquaflame bolts.","italic":false,"color":"gray"}]']},Unbreakable:1,HideFlags:4,CustomModelData:65,Enmity:1}}}