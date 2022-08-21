scoreboard players set @s enmity.cooldown 15
tag @s add enmity.dashing
playsound entity.elder_guardian.curse hostile @a[distance=0..] ~ ~ ~ 1.5 0.8 0
playsound entity.elder_guardian.curse hostile @a[distance=0..] ~ ~ ~ 1.5 0.6 0
playsound entity.elder_guardian.curse hostile @a[distance=0..] ~ ~ ~ 1.5 0.4 0
kill @e[type=marker,tag=enmity.elder_dash_anchor]
execute at @s facing entity @p[tag=enmity.elder_target] feet run summon marker ^ ^ ^30 {Tags:["enmity.elder_dash_anchor"]}