tp @s[tag=!enmity.despawning] ^ ^ ^0.15 facing entity @p[gamemode=!spectator]
execute unless entity @a[distance=..24,gamemode=!spectator] run tp @s[tag=!enmity.despawning] ^ ^ ^0.3 facing entity @p[gamemode=!spectator]
execute at @s anchored eyes run tp @s ~ ~ ~ facing entity @p[gamemode=!spectator] eyes
tag @s add enmity.in_blocks
execute if block ~ ~ ~ #enmity:not_solid if block ~ ~1 ~ #enmity:not_solid if block ~ ~2 ~ #enmity:not_solid if block ~ ~3 ~ #enmity:not_solid if block ~ ~4 ~ #enmity:not_solid if block ~ ~5 ~ #enmity:not_solid if block ~ ~6 ~ #enmity:not_solid if block ~ ~7 ~ #enmity:not_solid if block ~ ~8 ~ #enmity:not_solid if block ~ ~9 ~ #enmity:not_solid if block ~ ~10 ~ #enmity:not_solid if block ~ ~11 ~ #enmity:not_solid run tag @s remove enmity.in_blocks
tp @s[tag=enmity.in_blocks,tag=!enmity.despawning] ~ ~1 ~
execute if block ~ ~-0.2 ~ #enmity:not_solid run tp @s[tag=!enmity.in_blocks] ~ ~-0.2 ~
execute if block ~ ~-1 ~ #enmity:not_solid run tp @s[tag=!enmity.in_blocks] ~ ~-1 ~
tp @s[tag=enmity.despawning,tag=enmity.in_blocks] ~ ~-0.2 ~
tp @s[tag=enmity.despawning,tag=!enmity.in_blocks] ~ ~-1 ~
execute if predicate enmity:random/random_0.5 if entity @s[tag=enmity.despawning,tag=enmity.in_blocks] run function enmity:entities/mobs/giant/step
data merge entity @s[y=-100,dy=-10000] {DeathLootTable:"minecraft:empty"}
kill @s[y=-100,dy=-10000]
execute if entity @s[nbt={HurtTime:8s}] run playsound entity.zombie.hurt hostile @a[distance=0..] ~ ~ ~ 2 0.3 0
execute if entity @s[nbt={HurtTime:8s}] run playsound entity.zoglin.hurt hostile @a[distance=0..] ~ ~ ~ 1 0.3 0
execute if entity @s[tag=enmity.rising] run function enmity:entities/mobs/giant/rise
tag @s[tag=enmity.in_blocks] remove enmity.in_blocks
execute store result bossbar enmity.giant value run data get entity @s Health
execute if predicate enmity:environment/in_the_nether run function enmity:entities/mobs/giant/despawning/silent