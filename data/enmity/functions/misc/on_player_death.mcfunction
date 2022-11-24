scoreboard players set @s enmity.temp_cd 0
scoreboard players set @s enmity.age 0
scoreboard players set @s enmity.die 0
scoreboard players set @s enmity.phantasmal_curse 0
scoreboard players set @s enmity.in_end_center_time 0
scoreboard players set @s enmity.egapple_cooldown 0
tag @s add enmity.this
execute as @e[type=marker,tag=enmity.ender_warper] if score @s enmity.player_id = @a[tag=enmity.this,limit=1] enmity.player_id run scoreboard players set @s enmity.player_id -1
execute as @e[type=!#enmity:not_living] if score @s enmity.subjugator_capture_id = @a[tag=enmity.this,limit=1] enmity.player_id run tag @s add enmity.captured
function enmity:items/usable/subjugator/release
tag @s remove enmity.this