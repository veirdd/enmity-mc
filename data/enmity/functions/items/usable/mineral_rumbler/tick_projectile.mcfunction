execute if score @s enmity.age matches 30.. run function enmity:items/usable/mineral_rumbler/die_projectile
execute if entity @s[tag=enmity.granite] run particle block granite ~ ~1.2 ~ 0.1 0.1 0.1 0 5 force
execute if entity @s[tag=enmity.andesite] run particle block andesite ~ ~1.2 ~ 0.1 0.1 0.1 0 5 force
execute if entity @s[tag=enmity.diorite] run particle block diorite ~ ~1.2 ~ 0.1 0.1 0.1 0 5 force
playsound block.nether_wart.break neutral @a[distance=0..] ~ ~ ~ 2 0 1
scoreboard players set @s enmity.math_a 1
execute if score @s enmity.age matches 5.. store result score @s enmity.math_a run data get entity @s Motion[1] 100
execute if score @s enmity.math_a matches -8 run function enmity:items/usable/mineral_rumbler/die_projectile