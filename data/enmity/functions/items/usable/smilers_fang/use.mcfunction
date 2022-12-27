scoreboard players add @s enmity.cooldown 4
tag @s add enmity.this_2
summon marker ~ ~ ~ {Tags:["enmity.projectile","enmity.smilers_fang"]}
scoreboard players operation @e[type=marker,tag=enmity.smilers_fang] enmity.player_id = @s enmity.player_id
scoreboard players set @e[type=marker,tag=enmity.smilers_fang] enmity.dmg 11
scoreboard players operation @e[type=marker,tag=enmity.smilers_fang] enmity.dmg += @s enmity.dmg_bst
execute as @e[type=marker,tag=enmity.smilers_fang] run function enmity:items/usable/smilers_fang/raycast
kill @e[type=marker,tag=enmity.smilers_fang]
tag @s remove enmity.this_2