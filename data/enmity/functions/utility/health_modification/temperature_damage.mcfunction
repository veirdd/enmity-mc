execute if score @s enmity.temp_cd matches 10.. at @s run playsound block.fire.extinguish player @a[distance=0..] ~ ~ ~ 1 2 0
execute if score @s enmity.temp_cd matches ..-10 at @s run playsound block.glass.break player @a[distance=0..] ~ ~ ~ 1 2 0
execute unless score @s enmity.temp_cd matches -9..9 at @s run playsound entity.player.hurt player @a[distance=0..] ~ ~ ~ 1 1 0
effect give @s slowness 2 0 true
effect give @s mining_fatigue 2 0 true
effect give @s weakness 2 0 true
function enmity:utility/health_modification/reduce_health_by_1
function enmity:utility/damage/init