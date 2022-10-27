particle sonic_boom ~ ~0.8 ~ 0 0 0 0 1 force
particle sculk_charge_pop ~ ~0.8 ~ 0 0 0 0.3 150 force
playsound block.beacon.activate neutral @a[distance=0..] ~ ~ ~ 2 2 0
playsound block.beacon.activate neutral @a[distance=0..] ~ ~ ~ 2 2 0
playsound block.ender_chest.open neutral @a[distance=0..] ~ ~ ~ 1.5 0.3 0
tag @s add enmity.this
execute as @e[scores={enmity.iframes=0},type=!#enmity:not_living,type=!player,tag=!enmity.projectile,distance=..6] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id run tag @s add enmity.hit
execute as @a[scores={enmity.iframes=0},distance=..3] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id run tag @s add enmity.hit
execute if entity @e[type=!#enmity:not_living,tag=enmity.hit] run function enmity:items/usable/sculk_verge/damage
tag @s remove enmity.this
scoreboard players set @s enmity.cooldown 0