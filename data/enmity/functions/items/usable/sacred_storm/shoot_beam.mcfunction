playsound minecraft:entity.hostile.big_fall neutral @a[distance=0..] ~ ~ ~ 2 0 0
summon marker ~ ~ ~ {Tags:["enmity.projectile","enmity.sacred_storm_beam","enmity.this"]}
execute as @e[type=marker,tag=enmity.sacred_storm_beam] run tp @s ~ ~ ~ facing ^ ^ ^1
scoreboard players operation @e[type=marker,tag=enmity.sacred_storm_beam] enmity.player_id = @s enmity.player_id
scoreboard players set @e[type=marker,tag=enmity.sacred_storm_beam] enmity.dmg 15
scoreboard players operation @e[type=marker,tag=enmity.sacred_storm_beam] enmity.dmg += @s enmity.dmg_bst
execute as @e[type=marker,tag=enmity.sacred_storm_beam] run function enmity:items/usable/sacred_storm/raycast_beam
kill @e[type=marker,tag=enmity.this]