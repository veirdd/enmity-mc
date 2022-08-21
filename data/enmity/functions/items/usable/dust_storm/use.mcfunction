scoreboard players remove @s enmity.mana 40
scoreboard players set @s enmity.cooldown 16
scoreboard players set @s enmity.raycast 0
playsound block.soul_sand.step neutral @a[distance=0..] ~ ~ ~ 2 0 0
summon marker ~ ~ ~ {Tags:["enmity.projectile","enmity.dust_storm"]}
scoreboard players operation @e[type=marker,tag=enmity.dust_storm] enmity.player_id = @s enmity.player_id
scoreboard players set @e[type=marker,tag=enmity.dust_storm] enmity.dmg 4
scoreboard players operation @e[type=marker,tag=enmity.dust_storm] enmity.dmg += @s enmity.dmg_bst
function enmity:items/usable/dust_storm/raycast
kill @e[type=marker,tag=enmity.dust_storm]