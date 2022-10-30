execute if entity @s[tag=!enmity.red] run particle cloud ~ ~ ~ 0.5 0.2 0.5 0.01 5 force
execute if entity @s[tag=!enmity.red] run particle falling_water ~ ~ ~ 0.3 0 0.3 0 3 force
execute if entity @s[tag=enmity.red] run particle dust 0.8 0.1 0.1 2 ~ ~ ~ 0.5 0.2 0.5 0.01 5 force
execute if entity @s[tag=enmity.red] run particle falling_lava ~ ~ ~ 0.3 0 0.3 0 3 force
playsound weather.rain neutral @a[distance=0..] ~ ~ ~ 0.25 2 0
data modify entity @s CustomNameVisible set value 0
data modify entity @s CustomNameVisible set value 1