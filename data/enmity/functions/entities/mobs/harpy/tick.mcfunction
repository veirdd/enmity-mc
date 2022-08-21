execute if entity @s[nbt={HurtTime:9s}] run function enmity:entities/mobs/harpy/on_harm
data modify entity @s Fire set value 0s
execute unless entity @s[tag=enmity.untamable] run function enmity:entities/mobs/harpy/taming/checks
execute if entity @s[tag=enmity.tamed] run function enmity:entities/mobs/harpy/tamed/tick