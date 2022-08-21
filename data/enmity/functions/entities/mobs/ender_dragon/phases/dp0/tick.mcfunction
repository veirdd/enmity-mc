execute if score @s enmity.age matches 300.. if score @s enmity.phase_ct matches 1.. run function enmity:entities/mobs/ender_dragon/change_phase
execute if score @s enmity.phase_ct matches 8 if score @s enmity.age matches 120.. run function enmity:entities/mobs/ender_dragon/change_phase
execute if score @s enmity.phase_ct matches 4 if score @s enmity.age matches 220.. run function enmity:entities/mobs/ender_dragon/change_phase

execute if score @s enmity.phase_ct matches 9 run function enmity:entities/mobs/ender_dragon/phases/dp0/end_crystal_bolts/tick
execute if score @s enmity.phase_ct matches 4 run function enmity:entities/mobs/ender_dragon/phases/dp0/ray_hell/tick