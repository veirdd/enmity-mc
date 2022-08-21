particle dust 0.2 0.6 0.6 2 ~ ~2 ~ 1.4 1.4 1.4 0 500 force
particle end_rod ~ ~2 ~ 1 1 1 0.6 100 force
playsound entity.elder_guardian.curse hostile @a[distance=0..] ~ ~ ~ 2 0.7 0
playsound entity.elder_guardian.curse hostile @a[distance=0..] ~ ~ ~ 2 0.6 0
playsound entity.elder_guardian.curse hostile @a[distance=0..] ~ ~ ~ 2 0.5 0
playsound entity.elder_guardian.curse hostile @a[distance=0..] ~ ~ ~ 2 0.4 0
playsound entity.elder_guardian.curse hostile @a[distance=0..] ~ ~ ~ 2 0.3 0
playsound entity.elder_guardian.curse hostile @a[distance=0..] ~ ~ ~ 2 0.2 0
tellraw @a {"text":"The Elder Guardian has been defeated.","color":"gray"}
bossbar set enmity.elder_guardian players
kill @s
scoreboard players set %elder_guardian_defeated enmity.value 1