execute if entity @s[nbt={Fire:-1s}] run playsound entity.enderman.teleport hostile @a[distance=0..] ~ ~ ~ 1.5 1 0
effect clear @s invisibility
data modify entity @s Silent set value 0
tag @s add enmity.visible