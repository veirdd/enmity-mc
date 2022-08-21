tag @s add enmity.despawning
tag @s add enmity.invulnerable
data merge entity @s {ArmorItems:[{}],Invulnerable:1}
scoreboard players set @s enmity.iframes 9999
bossbar set enmity.giant players
tellraw @a {"text":"The Giant has failed to be beaten and buries itself in the ground...","color":"gray"}