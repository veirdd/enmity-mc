execute store result score @s enmity.cooldown run loot spawn ~ -1000 ~ loot enmity:random_6
scoreboard players operation @s[tag=!enmity.phase_2] enmity.cooldown += %const_9 enmity.value
scoreboard players operation @s[tag=enmity.phase_2] enmity.cooldown += %const_4 enmity.value
execute at @p run summon area_effect_cloud ~ ~ ~ {Tags:["enmity.zombie_spawn"]}
execute at @p run summon area_effect_cloud ~ ~ ~ {Tags:["enmity.zombie_spawn"]}
execute at @p run summon area_effect_cloud ~ ~ ~ {Tags:["enmity.zombie_spawn"]}
execute if score %difficulty enmity.value matches 2 at @p run summon area_effect_cloud ~ ~ ~ {Tags:["enmity.zombie_spawn"]}
execute as @p at @s run spreadplayers ~ ~ 0 12 false @e[type=area_effect_cloud,tag=enmity.zombie_spawn]
execute at @e[type=area_effect_cloud,tag=enmity.zombie_spawn] run playsound entity.zombie_villager.converted neutral @a[distance=0..] ~ ~ ~ 1 0 0
execute at @e[type=area_effect_cloud,tag=enmity.zombie_spawn] run summon zombie ~ ~-2 ~ {NoAI:1,Tags:["enmity.zombie_minion","enmity.invulnerable","enmity.rising","enmity.new","enmity.custom_mob"],Invulnerable:1,DeathLootTable:"enmity:entities/zombie_minion",DeathTime:19s}
execute if score %difficulty enmity.value matches 2 run effect give @e[type=zombie,tag=enmity.zombie_minion,tag=enmity.new] health_boost 1000000 2 true
execute if score %difficulty enmity.value matches 2 run effect give @e[type=zombie,tag=enmity.zombie_minion,tag=enmity.new] strength 1000000 0 true
execute if score %difficulty enmity.value matches 2 run effect give @e[type=zombie,tag=enmity.zombie_minion,tag=enmity.new] speed 1000000 0 true
tag @e[type=zombie,tag=enmity.zombie_minion,tag=enmity.new] remove enmity.new