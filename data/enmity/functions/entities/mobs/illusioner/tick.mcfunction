particle portal ~ ~1 ~ 0.2 0.5 0.2 0.5 1 normal
execute if score %difficulty enmity.value matches 1 run tp @s[nbt={OnGround:1b},scores={enmity.cooldown=0}] ~ ~ ~ facing entity @p[gamemode=!creative,gamemode=!spectator,distance=..12] feet
execute if score %difficulty enmity.value matches 2 run tp @s[nbt={OnGround:1b},scores={enmity.cooldown=0}] ~ ~ ~ facing entity @p[gamemode=!creative,gamemode=!spectator,distance=..16] feet
execute if entity @p[gamemode=!creative,gamemode=!spectator,distance=..4] run function enmity:entities/mobs/illusioner/teleport
execute if block ~ ~-0.5 ~ #enmity:not_solid if block ~ ~-1.5 ~ #enmity:not_solid run function enmity:entities/mobs/illusioner/teleport
execute if entity @s[nbt={HurtTime:9s}] run function enmity:entities/mobs/illusioner/teleport
tag @s remove enmity.teleported