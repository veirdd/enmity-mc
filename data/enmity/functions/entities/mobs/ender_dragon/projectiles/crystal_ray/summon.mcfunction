playsound minecraft:block.respawn_anchor.deplete neutral @a[distance=0..] ~ ~ ~ 2 2 0
summon marker ~ ~ ~ {Tags:["enmity.projectile","enmity.dragon_crystal_ray"]}
scoreboard players operation @e[type=marker,tag=enmity.dragon_crystal_ray,limit=1] enmity.player_id = @s enmity.player_id
scoreboard players set @e[type=marker,tag=enmity.dragon_crystal_ray,limit=1] enmity.dmg 1
scoreboard players operation @e[type=marker,tag=enmity.dragon_crystal_ray,limit=1] enmity.dmg += @s enmity.dmg_bst
function enmity:entities/mobs/ender_dragon/projectiles/crystal_ray/raycast
kill @e[type=marker,tag=enmity.dragon_crystal_ray,limit=1]