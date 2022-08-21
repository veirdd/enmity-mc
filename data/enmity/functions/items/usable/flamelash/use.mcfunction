execute at @s anchored eyes positioned ^ ^ ^0.5 run particle flame ~ ~ ~ 0.1 0.1 0.1 0.1 20 force
playsound entity.blaze.shoot neutral @a[distance=0..] ~ ~ ~ 2 1 0
scoreboard players remove @s enmity.mana 90
scoreboard players set @s enmity.cooldown 24
summon minecraft:marker ~ ~ ~ {Tags:["enmity.new","enmity.flamelash","enmity.projectile"]}
scoreboard players set @e[type=marker,tag=enmity.flamelash,tag=enmity.new] enmity.dmg 9
scoreboard players operation @e[type=marker,tag=enmity.new] enmity.dmg += @s enmity.dmg_bst
tp @e[type=marker,tag=enmity.flamelash,tag=enmity.new] @s
execute at @s anchored eyes run tp @e[type=marker,tag=enmity.new] ^ ^ ^0.2
scoreboard players operation @e[type=marker,tag=enmity.new,tag=enmity.flamelash] enmity.player_id = @s enmity.player_id
tag @e[type=marker,tag=enmity.flamelash,tag=enmity.new] remove enmity.new