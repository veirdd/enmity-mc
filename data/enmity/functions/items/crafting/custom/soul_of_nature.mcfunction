particle minecraft:enchant ~ ~ ~ 0.5 0.5 0.5 0 50 force
playsound block.enchantment_table.use block @a[distance=0..] ~ ~1 ~ 2 1 0
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:wheat_seeds",Count:4b}}]
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:poppy",Count:2b}}]
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:dandelion",Count:2b}}]
kill @s
summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:firework_star",Count:1,tag:{display:{Name:'{"text":"Soul of Nature","italic":false}'},Enmity:1,CustomModelData:6}}}