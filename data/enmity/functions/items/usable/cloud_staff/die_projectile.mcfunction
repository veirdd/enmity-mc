execute if entity @s[tag=!enmity.red] run particle rain ~ ~ ~ 0.7 0.7 0.7 0.3 50 force
execute if entity @s[tag=enmity.red] run particle crimson_spore ~ ~ ~ 0.2 0.2 0.2 0 50 force
execute at @s run playsound entity.player.splash neutral @a[distance=0..] ~ ~ ~ 1 1.5 0
kill @s