data modify entity @s Item.tag.display set from entity @s Item.tag.hold.display
execute positioned ~ ~0.33 ~ as @e[type=item,distance=..1.5,nbt={Item:{tag:{Enmity.CustomBlock:1b}}},limit=1,sort=nearest] run tag @s add enmity.this
execute store result score @s enmity.math_a run data get entity @e[type=item,tag=enmity.this,limit=1] Item.tag.MiningLevel
execute if score @s enmity.math_a < @s enmity.hp_dummy run kill @e[type=item,tag=enmity.this,limit=1]
kill @e[type=experience_orb,distance=..1]
data modify entity @e[type=item,tag=enmity.this,limit=1] Item set from entity @s Item
execute as @e[type=item,tag=enmity.this] if entity @s[nbt={Item:{tag:{NoDrop:1}}}] run kill @s
execute as @e[type=item,tag=enmity.this,limit=1] store result score @s enmity.math_a run data get entity @s Item.tag.CustomModelData
execute as @e[type=item,tag=enmity.this,limit=1] store result entity @s Item.tag.CustomModelData int 1 run scoreboard players add @s enmity.math_a 1
tag @e[type=item,tag=enmity.this] remove enmity.this
kill @s