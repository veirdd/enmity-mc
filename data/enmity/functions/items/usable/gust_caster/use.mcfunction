scoreboard players remove @s enmity.mana 100
scoreboard players add @s enmity.cooldown 24
execute unless entity @s[tag=enmity.nimbus] run playsound item.trident.riptide_2 neutral @a[distance=0..] ~ ~ ~ 2 0 0
execute at @s anchored eyes positioned ^ ^ ^0.5 run particle firework ~ ~ ~ 0.5 0.5 0.5 0.2 20 force
summon minecraft:marker ~ ~ ~ {Tags:["enmity.new","enmity.gust","enmity.projectile"]}
scoreboard players set @e[type=marker,tag=enmity.gust,tag=enmity.new] enmity.dmg 6
scoreboard players operation @e[type=marker,tag=enmity.new] enmity.dmg += @s enmity.dmg_bst
tp @e[type=marker,tag=enmity.new] @s
execute at @s anchored eyes run tp @e[type=marker,tag=enmity.new] ^ ^ ^0.2
scoreboard players operation @e[type=marker,tag=enmity.new] enmity.player_id = @s enmity.player_id
tag @e[type=marker,tag=enmity.gust,tag=enmity.new] remove enmity.new