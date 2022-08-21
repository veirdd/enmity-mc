particle minecraft:enchant ~ ~ ~ 0.5 0.5 0.5 0 50 force
particle minecraft:dragon_breath ~ ~0.2 ~ 0.1 0.1 0.1 0.05 20 force
playsound block.enchantment_table.use block @a[distance=0..] ~ ~1 ~ 2 1 0
kill @s
tag @e[type=item,limit=1,distance=..0.5,nbt={Item:{Count:1b}},nbt=!{Item:{tag:{Enmity:1,CustomModelData:89}}},nbt=!{Item:{tag:{Enmity.EternalItem:1}}}] add enmity.this
summon zombie ~ -1000 ~ {Silent:1,NoAI:1,PersistenceRequired:1,Invulnerable:1,DeathLootTable:"minecraft:empty",Tags:["enmity.new"]}
data modify entity @e[type=zombie,tag=enmity.new,limit=1] HandItems[0] set from entity @e[type=item,tag=enmity.this,limit=1] Item
kill @e[type=item,tag=enmity.this,limit=1]
item modify entity @e[type=zombie,tag=enmity.new,limit=1] weapon.mainhand enmity:eternal
summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"stone",Count:1},Tags:["enmity.new"]}
data modify entity @e[type=item,tag=enmity.new,limit=1] Item set from entity @e[type=zombie,tag=enmity.new,limit=1] HandItems[0]
kill @e[type=zombie,tag=enmity.new,limit=1]
tag @e[type=zombie,tag=enmity.new,limit=1] remove enmity.new
tag @e[type=item,tag=enmity.new,limit=1] remove enmity.new
tag @s add enmity.crafted_eternal