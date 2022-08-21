execute if predicate enmity:random/random_0.5 run function enmity:entities/mobs/giant/step
tp @s ~ ~0.2 ~
execute unless entity @s[tag=enmity.in_blocks] run tag @s remove enmity.rising
execute unless entity @s[tag=enmity.in_blocks] run tag @s remove enmity.invulnerable
execute unless entity @s[tag=enmity.in_blocks] run data modify entity @s Invulnerable set value 0