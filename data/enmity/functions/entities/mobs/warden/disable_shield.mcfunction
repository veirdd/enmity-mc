data merge entity @s {Invulnerable:0}
tag @s remove enmity.invulnerable
particle sonic_boom ~ ~1.5 ~ 0.3 0.3 0.3 0 5 force
playsound minecraft:entity.warden.death hostile @a[distance=0..] ~ ~ ~ 2 0 0
function enmity:entities/mobs/warden/summon_projectiles