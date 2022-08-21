data merge entity @s {Invulnerable:1}
tag @s add enmity.invulnerable
scoreboard players set @s enmity.cooldown 350
particle sonic_boom ~ ~1.5 ~ 0.3 0.3 0.3 0 5 force
playsound minecraft:entity.warden.death hostile @a[distance=0..] ~ ~ ~ 2 0 0
function enmity:entities/mobs/warden/summon_projectiles