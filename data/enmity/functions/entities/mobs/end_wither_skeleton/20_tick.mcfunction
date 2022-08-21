effect give @a[distance=..5,gamemode=!creative] wither 1 3 true
execute if score @s enmity.cooldown matches 1.. run scoreboard players remove @s enmity.cooldown 1