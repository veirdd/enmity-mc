particle minecraft:enchant ~ ~ ~ 0.5 0.5 0.5 0 50 force
playsound block.enchantment_table.use block @a[distance=0..] ~ ~1 ~ 2 1 0
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:echo_shard",Count:8b}}]
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:firework_star",Count:8b,tag:{Enmity:1,CustomModelData:1}}}]
kill @s
summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:warped_fungus_on_a_stick",Count:1,tag:{display:{Name:'{"text":"Soul Gem","italic":false}',Lore:['[{"text":"Accessory type: ","italic":false,"color":"gray"},{"text":"effect","color":"white"}]','[{"text":"Disables accessory slots.","italic":false,"color":"gray"}]','[{"text":"Links you with the accessories from your soul chest,","italic":false,"color":"gray"}]','[{"text":"allowing you to use its 5 slots.","italic":false,"color":"gray"}]']},Unbreakable:1,HideFlags:4,CustomModelData:124,Enmity:1,Enmity.ItemGroups:["accessories","effect"]}}}