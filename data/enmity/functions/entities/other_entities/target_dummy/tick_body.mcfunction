data merge entity @s {Health:1024,Fire:0s}
execute if entity @s[nbt={HurtTime:10s}] run playsound entity.zombie.attack_wooden_door neutral @a[distance=0..] ~ ~ ~ 0.8 1.7 0
tag @s add enmity.this
execute as @e[type=armor_stand,tag=enmity.target_dummy] if score @s enmity.age = @e[type=zombie,tag=enmity.this,limit=1] enmity.age run tag @s add enmity.this
execute unless entity @e[type=armor_stand,tag=enmity.this,limit=1] run function enmity:entities/other_entities/target_dummy/die
scoreboard players operation @e[type=armor_stand,tag=enmity.target_dummy,limit=1] enmity.math_f = @s enmity.math_f
tag @e[type=armor_stand,tag=enmity.this,limit=1] remove enmity.this
tag @s remove enmity.this
effect clear @s glowing