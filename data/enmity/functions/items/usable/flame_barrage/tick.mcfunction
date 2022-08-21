function enmity:items/usable/flame_barrage/summon_projectile
execute if score @s enmity.cooldown matches ..1 run tag @s remove enmity.flame_barrage