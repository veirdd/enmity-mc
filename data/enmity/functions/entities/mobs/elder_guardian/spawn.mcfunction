summon elder_guardian ~ ~1 ~ {Tags:["enmity.boss"]}
tp @s ~ ~1 ~
scoreboard players set @e[type=elder_guardian] enmity.phase 0
tag @s add enmity.arena_built
particle dust 0.2 0.6 0.6 2 ~ ~2 ~ 1.4 1.4 1.4 0 500 force
particle end_rod ~ ~2 ~ 1 1 1 0.6 100 force
playsound entity.elder_guardian.curse hostile @a[distance=0..] ~ ~ ~ 2 1 0
playsound entity.elder_guardian.curse hostile @a[distance=0..] ~ ~ ~ 2 0.9 0
playsound entity.elder_guardian.curse hostile @a[distance=0..] ~ ~ ~ 2 0.8 0
playsound entity.elder_guardian.curse hostile @a[distance=0..] ~ ~ ~ 2 0.7 0
playsound entity.elder_guardian.curse hostile @a[distance=0..] ~ ~ ~ 2 0.6 0
playsound entity.elder_guardian.curse hostile @a[distance=0..] ~ ~ ~ 2 0.5 0