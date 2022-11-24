particle minecraft:enchant ~ ~ ~ 0.5 0.5 0.5 0 50 force
particle minecraft:crimson_spore ~ ~ ~ 0.5 0.5 0.5 0 50 force
playsound block.enchantment_table.use block @a[distance=0..] ~ ~1 ~ 2 1 0
playsound block.enchantment_table.use block @a[distance=0..] ~ ~1 ~ 2 0.5 0
playsound block.enchantment_table.use block @a[distance=0..] ~ ~1 ~ 2 0 0
playsound entity.zombie.attack_iron_door block @a[distance=0..] ~ ~1 ~ 2 1.3 0
data modify entity @s Item.tag.StoredEnchantments set from entity @e[type=item,limit=1,distance=..0.5,nbt={Item:{tag:{Enchantments:[{}]}}}] Item.tag.Enchantments
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{tag:{Enchantments:[{}]}}}]
tag @e[type=item,tag=enmity.new] remove enmity.new