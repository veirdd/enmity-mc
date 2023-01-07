execute store result score @s enmity.hp_dummy run data get entity @s Health
execute if score @s enmity.hp_dummy matches ..200 run data modify entity @s Health set value 1024f
data modify entity @s Fire set value -1s
execute if entity @s[nbt={HurtTime:10s}] run playsound entity.zombie.attack_wooden_door neutral @a[distance=0..] ~ ~ ~ 0.8 1.7 0
tag @s add enmity.this
execute as @e[type=armor_stand,tag=enmity.target_dummy] if score @s enmity.age = @e[type=zombie,tag=enmity.this,limit=1] enmity.age run tag @s add enmity.this
execute unless entity @e[type=armor_stand,tag=enmity.this,limit=1] run function enmity:entities/other_entities/target_dummy/die
tag @e[type=armor_stand,tag=enmity.this] remove enmity.this
tag @s remove enmity.this
effect clear @s glowing