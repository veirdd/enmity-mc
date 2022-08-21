execute at @p[tag=enmity.dragon_target] run playsound block.beacon.deactivate neutral @a[distance=0..] ^ ^ ^6 2 1.5 0
execute at @p[tag=enmity.dragon_target] run playsound entity.evoker.prepare_attack neutral @a[distance=0..] ^ ^ ^6 2 2 0
function enmity:entities/mobs/ender_dragon/projectiles/ray/raycast_2
kill @s