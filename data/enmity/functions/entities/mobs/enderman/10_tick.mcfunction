tag @s add enmity.this
execute as @a[distance=..8,gamemode=!creative,gamemode=!spectator] at @s run function enmity:entities/mobs/enderman/rotate
tag @s remove enmity.this