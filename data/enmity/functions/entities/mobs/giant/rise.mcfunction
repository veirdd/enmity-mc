execute if predicate enmity:random/random_0.5 run playsound block.stone.break hostile @a[distance=0..] ~ ~ ~ 2 0.5 0
execute if predicate enmity:random/random_0.5 run playsound block.gravel.break hostile @a[distance=0..] ~ ~ ~ 1 0.5 0
execute if predicate enmity:random/random_0.5 run playsound block.sand.break hostile @a[distance=0..] ~ ~ ~ 2 0.5 0
particle block dirt ~ ~ ~ 1.25 0.5 1.25 0 20 force
particle block stone ~ ~ ~ 1.25 0.5 1.25 0 20 force
tp @s ~ ~0.2 ~
execute unless entity @s[tag=enmity.in_blocks] run tag @s remove enmity.rising
execute unless entity @s[tag=enmity.in_blocks] run tag @s remove enmity.invulnerable
execute unless entity @s[tag=enmity.in_blocks] run data modify entity @s Invulnerable set value 0