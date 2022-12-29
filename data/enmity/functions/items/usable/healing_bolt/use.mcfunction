scoreboard players remove @s enmity.mana 70
scoreboard players add @s enmity.cooldown 16
playsound block.redstone_torch.burnout neutral @a[distance=0..] ~ ~ ~ 0.7 1.3 0
playsound block.moss.break neutral @a[distance=0..] ~ ~ ~ 2 0.5 0
playsound block.moss.break neutral @a[distance=0..] ~ ~ ~ 2 0.5 0
summon minecraft:marker ~ ~ ~ {Tags:["enmity.new","enmity.healing_bolt","enmity.projectile"]}
scoreboard players operation @e[type=marker,tag=enmity.new] enmity.dmg += @s enmity.dmg_bst
tp @e[type=marker,tag=enmity.healing_bolt,tag=enmity.new] @s
execute at @s anchored eyes run tp @e[type=marker,tag=enmity.new] ^ ^ ^0.2
scoreboard players operation @e[type=marker,tag=enmity.new] enmity.player_id = @s enmity.player_id
tag @e[type=marker,tag=enmity.healing_bolt,tag=enmity.new] remove enmity.new