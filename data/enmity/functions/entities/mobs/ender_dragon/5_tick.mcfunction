execute if score @s enmity.phase matches 0 run function enmity:entities/mobs/ender_dragon/phases/dp0/5_tick
execute if score @s enmity.phase matches 5 run function enmity:entities/mobs/ender_dragon/phases/dp5/5_tick

execute if score @s enmity.phase_ct matches 1.. positioned 0 128 0 run tag @r[gamemode=!spectator,distance=..128,nbt={FallFlying:1b}] add enmity.attack
execute at @p[tag=enmity.attack] as @e[type=end_crystal,tag=enmity.dragon_crystal,limit=1,sort=random,distance=..64] at @s facing entity @p[tag=enmity.attack] eyes run function enmity:entities/mobs/ender_dragon/projectiles/crystal_ray/summon
tag @a[tag=enmity.attack] remove enmity.attack

execute if entity @s[tag=enmity.desperation_phase] run particle explosion ~ ~2 ~ 2 2 2 0 2 force