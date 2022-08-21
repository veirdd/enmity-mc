particle rain ~ ~ ~ 0.7 0.7 0.7 0.3 50 force
particle flame ~ ~ ~ 0.7 0.7 0.7 0.1 10 force
execute at @s run playsound entity.player.splash.high_speed neutral @a[distance=0..] ~ ~ ~ 2.0 2.0 0.0
execute at @s run playsound block.lava.extinguish neutral @a[distance=0..] ~ ~ ~ 2.0 1.5 0.0
kill @s