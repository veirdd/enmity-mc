tag @s add enmity.this
scoreboard players set @a[distance=..72,gamemode=!creative,gamemode=!spectator] enmity.raycast 0
execute as @a[distance=..72,gamemode=!creative,gamemode=!spectator] at @s anchored eyes run function enmity:entities/mobs/smiler/raycast
execute if entity @a[tag=enmity.hit] run function enmity:entities/mobs/smiler/damage
tag @s remove enmity.this