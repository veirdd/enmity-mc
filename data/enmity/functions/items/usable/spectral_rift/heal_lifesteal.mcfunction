particle heart ~ ~ ~ 0 0 0 0 1 force
playsound entity.generic.big_fall neutral @a[distance=0..] ~ ~ ~ 2 0 0
execute as @a[tag=enmity.hit] run function enmity:misc/health_modification/increase_health_by_1
tag @a[tag=enmity.hit] remove enmity.hit
kill @s