tag @s add enmity.this
execute if entity @e[type=item,distance=..6,tag=!enmity.projectile,nbt={PickupDelay:0s}] run playsound entity.panda.pre_sneeze neutral @a[distance=0..] ~ ~ ~ 0.4 2 0
execute as @e[type=item,distance=..6,tag=!enmity.projectile,nbt={PickupDelay:0s}] at @s run function enmity:items/accessories/magnet/item_tick
tag @s remove enmity.this