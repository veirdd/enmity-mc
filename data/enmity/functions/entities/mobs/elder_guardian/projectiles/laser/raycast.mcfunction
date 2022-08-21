scoreboard players add @s enmity.raycast 1
particle dust 0 0.7 0.8 2 ~ ~ ~ 0 0 0 0 2 force
particle dust 0 0.8 0.7 2 ^ ^ ^0.25 0 0 0 0 2 force
execute if score @s enmity.raycast matches 128.. run scoreboard players set @s enmity.raycast 0
execute if score @e[type=marker,limit=1,tag=enmity.elder_laser] enmity.impact_ct matches 1.. run scoreboard players set @s enmity.raycast 0
execute if score @s enmity.raycast matches 0 run particle dust 0 0.9 1 1 ~ ~ ~ 1 1 1 0 50 force
execute if score @s enmity.raycast matches 0 run particle dust 0 1 0.9 1 ^ ^ ^0.25 1 1 1 0 50 force
execute if score @s enmity.raycast matches 0 run particle firework ~ ~ ~ 0.3 0.3 0.3 0.2 50 force
execute if score @s enmity.raycast matches 0 run particle flash ~ ~ ~ 0 0 0 0 1 force
playsound entity.elder_guardian.hurt neutral @a[distance=0..] ~ ~ ~ 0.03 2 0
tp @e[type=marker,tag=enmity.elder_laser,limit=1] ~ ~ ~
execute as @e[type=marker,limit=1,tag=enmity.elder_laser] run function enmity:entities/mobs/elder_guardian/projectiles/laser/projectile
execute if score @s enmity.raycast matches 1.. positioned ^ ^ ^0.5 run function enmity:entities/mobs/elder_guardian/projectiles/laser/raycast