execute if entity @s[type=wither_skeleton] run playsound entity.wither_skeleton.hurt hostile @a[distance=0..] ~ ~ ~ 1 1 0
execute if entity @s[type=wither_skeleton,tag=enmity.end_wither_skeleton] run function enmity:entities/mobs/end_wither_skeleton/on_harm
execute if entity @s[type=wither] if score @s enmity.phase matches 1.. run playsound entity.wither.hurt hostile @a[distance=0..] ~ ~ ~ 2 1 0
execute if entity @s[type=wither] if score @s enmity.phase matches 1.. run playsound entity.wither.hurt hostile @a[distance=0..] ~ ~ ~ 2 0.8 0
execute if entity @s[type=ender_dragon] run playsound entity.ender_dragon.hurt hostile @a[distance=0..] ~ ~ ~ 2 1 0
data merge entity @s {HurtTime:10s}