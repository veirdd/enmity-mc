effect give @a[distance=..9,gamemode=!creative] slowness 1 0 true
effect give @a[distance=..6,gamemode=!creative] slowness 1 1 true
effect give @a[distance=..3,gamemode=!creative] slowness 1 2 true
execute if score @s enmity.idle_cd matches ..0 run function enmity:entities/mobs/wraith/ambience
scoreboard players remove @s enmity.idle_cd 20
execute if score @s enmity.cooldown matches 1.. run scoreboard players remove @s enmity.cooldown 1