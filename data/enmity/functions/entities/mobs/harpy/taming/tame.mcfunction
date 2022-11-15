kill @e[type=item,tag=enmity.treat]
playsound entity.generic.eat hostile @a[distance=0..] ~ ~ ~ 1 1 0
particle heart ~ ~1 ~ 0.5 0.5 0.5 0 8
data merge entity @s {NoAI:1,PersistenceRequired:1}
attribute @s generic.attack_damage modifier add 0-0-0-0-1 "" -1024 add
tag @s add enmity.tamed
tag @s add enmity.untamable