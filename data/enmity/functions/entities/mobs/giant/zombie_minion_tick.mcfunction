execute if block ~ ~ ~ #enmity:not_solid if block ~ ~1 ~ #enmity:not_solid run data merge entity @s {Invulnerable:0,NoAI:0}
execute if block ~ ~ ~ #enmity:not_solid if block ~ ~1 ~ #enmity:not_solid run tag @s remove enmity.invulnerable
execute if block ~ ~ ~ #enmity:not_solid if block ~ ~1 ~ #enmity:not_solid run tag @s remove enmity.rising
tp @s[tag=enmity.rising] ~ ~0.1 ~
execute if entity @s[tag=enmity.rising] run playsound block.stone.break hostile @a[distance=0..] ~ ~1.7 ~ 0.5 0.7 0
execute if entity @s[tag=enmity.rising] run playsound block.gravel.break hostile @a[distance=0..] ~ ~1.7 ~ 0.5 1 0
execute if entity @s[tag=enmity.rising] run particle block dirt ~ ~1 ~ 0.2 0.2 0.2 0 10 force
execute if entity @s[tag=enmity.rising] run particle block stone ~ ~1 ~ 0.2 0.2 0.2 0 10 force
execute unless entity @e[type=giant,distance=..32] run kill @s