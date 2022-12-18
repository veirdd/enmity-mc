data merge entity @s {NoAI:0,Peek:100b}
playsound block.sculk_sensor.clicking hostile @a[distance=0..] ~ ~ ~ 2 1 0
effect give @a[gamemode=!spectator,gamemode=!creative,distance=..8] darkness 10 0 true
tag @s add enmity.sensed_player