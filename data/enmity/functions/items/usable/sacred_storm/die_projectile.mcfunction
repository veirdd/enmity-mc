particle explosion ~ ~ ~ 0 0 0 0 1 force
playsound block.bone_block.break neutral @a[distance=0..] ~ ~ ~ 2 0 0
execute at @s facing entity @e[type=#enmity:enemies,tag=!enmity.sentry,tag=!enmity.projectile,distance=..24,limit=1] eyes run function enmity:items/usable/sacred_storm/shoot_beam
tp @s ~ -1000 ~
kill @s