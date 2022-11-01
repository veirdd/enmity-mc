execute if entity @s[tag=enmity.gunpowder_bomb] at @s run function enmity:items/usable/sulphur_staff/tick_projectile
execute if entity @s[tag=enmity.gunpowder_bomb,tag=enmity.no_motion,scores={enmity.age=2..}] at @s run function enmity:items/usable/sulphur_staff/motion
execute if entity @s[tag=enmity.flame_barrage] at @s run function enmity:items/usable/flame_barrage/tick_projectile
execute if entity @s[tag=enmity.flame_barrage,tag=enmity.no_motion,scores={enmity.age=2..}] at @s run function enmity:items/usable/flame_barrage/motion
execute if entity @s[tag=enmity.entrail_spewer] at @s run function enmity:items/usable/entrail_spewer/tick_projectile
execute if entity @s[tag=enmity.entrail_spewer,tag=enmity.no_motion,scores={enmity.age=2..}] at @s run function enmity:items/usable/entrail_spewer/motion