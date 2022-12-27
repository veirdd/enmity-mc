execute at @s anchored eyes positioned ^ ^ ^0.5 run particle entity_effect ~ ~ ~ 0.1 0.1 0.1 0.1 20 force
playsound block.note_block.chime neutral @a[distance=0..] ~ ~ ~ 2 0 0
playsound block.note_block.chime neutral @a[distance=0..] ~ ~ ~ 2 2 0
playsound block.note_block.chime neutral @a[distance=0..] ~ ~ ~ 2 1 0
scoreboard players remove @s enmity.mana 80
scoreboard players add @s enmity.cooldown 16
summon minecraft:marker ~ ~ ~ {Tags:["enmity.new","enmity.rainbow_bolt","enmity.projectile"]}
scoreboard players set @e[type=marker,tag=enmity.rainbow_bolt,tag=enmity.new] enmity.dmg 29
scoreboard players operation @e[type=marker,tag=enmity.new] enmity.dmg += @s enmity.dmg_bst
tp @e[type=marker,tag=enmity.rainbow_bolt,tag=enmity.new] @s
execute at @s anchored eyes run tp @e[type=marker,tag=enmity.new] ^ ^ ^0.2
scoreboard players operation @e[type=marker,tag=enmity.new,tag=enmity.rainbow_bolt] enmity.player_id = @s enmity.player_id
execute if score @s enmity.player_targeting matches 1 run tag @e[type=marker,tag=enmity.new] add enmity.player_targeting
tag @e[type=marker,tag=enmity.rainbow_bolt,tag=enmity.new] remove enmity.new