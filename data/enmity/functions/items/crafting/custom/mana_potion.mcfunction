particle minecraft:enchant ~ ~ ~ 0.5 0.5 0.5 0 50 force
playsound block.enchantment_table.use block @a[distance=0..] ~ ~1 ~ 2 1 0
kill @e[type=item,distance=..0.5,limit=1,nbt={Item:{id:"minecraft:glow_berries",Count:2b}}]
kill @s
summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:honey_bottle",Count:1,tag:{display:{Name:'{"text":"Mana Potion","italic":false}',Lore:['[{"text":"Fully restores mana.","italic":false,"color":"gray"}]']},CustomModelData:1,Enmity:1}}}