execute if score @s enmity.age matches 15.. run kill @s
tp @s ~ ~0.2 ~
particle campfire_cosy_smoke ~ ~ ~ 0.05 0.05 0.05 0 1 force
playsound block.redstone_torch.burnout neutral @a[distance=0..] ~ ~ ~ 0.075 0 0
tag @s add enmity.this
execute positioned ~ ~-1 ~ as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.target_dummy,tag=!enmity.projectile,distance=..1.2,type=!elder_guardian] run tag @s add enmity.hit
execute if entity @e[type=!#enmity:not_living,tag=enmity.hit] run function enmity:entities/mobs/elder_guardian/projectiles/geyser/damage
tag @s remove enmity.this