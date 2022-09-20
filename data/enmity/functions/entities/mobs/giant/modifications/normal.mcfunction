bossbar set enmity.giant max 300
execute if entity @s[tag=!enmity.despawning,tag=!enmity.rising] unless predicate enmity:environment/is_night run function enmity:entities/mobs/giant/despawning/despawn_daytime
attribute @s generic.max_health modifier add 0-0-0-0-0 "" 200 add
data merge entity @s {Silent:1}
scoreboard players set @s enmity.dmg 4
scoreboard players set @s enmity.dmg_rdc 1
effect give @s resistance 1000000 0 true