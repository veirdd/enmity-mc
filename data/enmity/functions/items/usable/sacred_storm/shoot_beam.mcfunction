scoreboard players set @s enmity.raycast 0
playsound minecraft:entity.hostile.big_fall neutral @a[distance=0..] ~ ~ ~ 2 0 0
summon marker ~ ~ ~ {Tags:["enmity.projectile","enmity.sacred_storm_beam"]}
scoreboard players operation @e[type=marker,tag=enmity.sacred_storm_beam] enmity.player_id = @s enmity.player_id
scoreboard players set @e[type=marker,tag=enmity.sacred_storm_beam] enmity.dmg 11
scoreboard players operation @e[type=marker,tag=enmity.sacred_storm_beam] enmity.dmg += @s enmity.dmg_bst
function enmity:items/usable/sacred_storm/raycast_beam
kill @e[type=marker,tag=enmity.sacred_storm_beam]