particle minecraft:enchant ~ ~ ~ 0.5 0.5 0.5 0 50 force
playsound block.enchantment_table.use block @a[distance=0..] ~ ~1 ~ 2 1 0
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:3b,tag:{Enmity:1,CustomModelData:7}}}]
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:phantom_membrane",Count:8b}}]
kill @s
summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:warped_fungus_on_a_stick",Count:1,tag:{display:{Name:'{"text":"Celestial Tracers","italic":false}',Lore:['[{"text":"Accessory type: ","italic":false,"color":"gray"},{"text":"mobility","color":"white"}]','[{"text":"Increases movement speed.","italic":false,"color":"gray"}]','[{"text":"Hold sneak to fly indefinitely.","italic":false,"color":"gray"}]','[{"text":"Look directly down to cancel the flight.","italic":false,"color":"gray"}]','[{"text":"Disables Levitation.","italic":false,"color":"gray"}]']},Unbreakable:1,HideFlags:4,CustomModelData:28,Enmity:1}}}