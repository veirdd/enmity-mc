execute if score %difficulty enmity.value matches 2 run summon wither_skeleton ~ ~ ~ {Attributes:[{Name:"generic.max_health",Base:25}],Tags:["enmity.wither_minion","enmity.custom_mob"],DeathLootTable:"enmity:entities/wither_minion",Health:25f,DeathTime:19s}
scoreboard players add @e[type=wither_skeleton,tag=enmity.wither_minion] enmity.age 2
summon wither_skeleton ~ ~ ~ {Attributes:[{Name:"generic.max_health",Base:25}],Tags:["enmity.wither_minion","enmity.custom_mob"],DeathLootTable:"enmity:entities/wither_minion",Health:25f,DeathTime:19s}
scoreboard players add @e[type=wither_skeleton,tag=enmity.wither_minion] enmity.age 2
execute if score %difficulty enmity.value matches 2 run summon wither_skeleton ~ ~ ~ {Attributes:[{Name:"generic.max_health",Base:25}],Tags:["enmity.wither_minion","enmity.custom_mob"],DeathLootTable:"enmity:entities/wither_minion",Health:25f,DeathTime:19s}
scoreboard players add @e[type=wither_skeleton,tag=enmity.wither_minion] enmity.age 2
summon wither_skeleton ~ ~ ~ {Attributes:[{Name:"generic.max_health",Base:25}],Tags:["enmity.wither_minion","enmity.custom_mob"],DeathLootTable:"enmity:entities/wither_minion",Health:25f,DeathTime:19s}
scoreboard players add @e[type=wither_skeleton,tag=enmity.wither_minion] enmity.age 2
spreadplayers ~ ~ 3 10 false @e[type=wither_skeleton,tag=enmity.wither_minion]
execute if score %difficulty enmity.value matches 1 run effect give @e[type=guardian,tag=enmity.wither_minion] resistance 1000000 1 true
execute if score %difficulty enmity.value matches 1 run effect give @e[type=wither_skeleton,tag=enmity.wither_minion] strength 1000000 2 true
execute if score %difficulty enmity.value matches 2 run effect give @e[type=wither_skeleton,tag=enmity.wither_minion] strength 1000000 3 true
execute at @e[type=wither_skeleton,tag=enmity.wither_minion] run particle large_smoke ~ ~0.5 ~ 0.3 0.5 0.3 0 20 force
playsound entity.wither_skeleton.hurt neutral @a[distance=0..] ~ ~ ~ 2 0 0