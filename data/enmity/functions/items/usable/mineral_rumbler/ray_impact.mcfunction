playsound minecraft:entity.evoker.prepare_attack neutral @a[distance=0..] ~ ~7 ~ 2 1.3 0
scoreboard players remove @s enmity.mana 90
scoreboard players set @s enmity.cooldown 40
summon marker ~ ~5 ~ {Tags:["enmity.projectile","enmity.new","enmity.mineral_rumbler"]}
particle explosion ~ ~6 ~ 0 0 0 0 1 force
scoreboard players operation @e[type=marker,tag=enmity.new] enmity.player_id = @s enmity.player_id
tag @e[type=marker,tag=enmity.new] remove enmity.new