playsound minecraft:block.respawn_anchor.deplete neutral @a[distance=0..] ~ ~ ~ 2 2 0
scoreboard players remove @s enmity.mana 50
scoreboard players add @s enmity.cooldown 12
summon marker ~ ~ ~ {Tags:["enmity.projectile","enmity.nights_ray"]}
scoreboard players operation @e[type=marker,tag=enmity.nights_ray] enmity.player_id = @s enmity.player_id
scoreboard players set @e[type=marker,tag=enmity.nights_ray] enmity.dmg 6
scoreboard players operation @e[type=marker,tag=enmity.nights_ray] enmity.dmg += @s enmity.dmg_bst
function enmity:items/usable/nights_ray/raycast
kill @e[type=marker,tag=enmity.nights_ray]