summon guardian ~ ~ ~ {Attributes:[{Name:"generic.max_health",Base:80}],Tags:["enmity.elder_minion","enmity.custom_mob","enmity.1"],DeathLootTable:"enmity:entities/elder_minion",Health:100f,DeathTime:19s}
scoreboard players add @e[type=guardian,tag=enmity.elder_minion] enmity.age 5
summon guardian ~ ~ ~ {Attributes:[{Name:"generic.max_health",Base:80}],Tags:["enmity.elder_minion","enmity.custom_mob","enmity.2"],DeathLootTable:"enmity:entities/elder_minion",Health:100f,DeathTime:19s}
scoreboard players add @e[type=guardian,tag=enmity.elder_minion] enmity.age 5
summon guardian ~ ~ ~ {Attributes:[{Name:"generic.max_health",Base:80}],Tags:["enmity.elder_minion","enmity.custom_mob","enmity.3"],DeathLootTable:"enmity:entities/elder_minion",Health:100f,DeathTime:19s}
scoreboard players add @e[type=guardian,tag=enmity.elder_minion] enmity.age 5
summon guardian ~ ~ ~ {Attributes:[{Name:"generic.max_health",Base:80}],Tags:["enmity.elder_minion","enmity.custom_mob","enmity.4"],DeathLootTable:"enmity:entities/elder_minion",Health:100f,DeathTime:19s}
execute if score %difficulty enmity.value matches 1 run effect give @e[type=guardian,tag=enmity.elder_minion] resistance 1000000 0 true
execute if score %difficulty enmity.value matches 2 run effect give @e[type=guardian,tag=enmity.elder_minion] resistance 1000000 1 true
execute if score %difficulty enmity.value matches 2 run scoreboard players set @e[type=guardian,tag=enmity.elder_minion] enmity.dmg_rdc 1
execute at @e[type=guardian,tag=enmity.elder_minion] run playsound entity.elder_guardian.curse hostile @a[distance=0..] ~ ~ ~ 2 1.3 0
execute at @e[type=guardian,tag=enmity.elder_minion] run playsound entity.elder_guardian.curse hostile @a[distance=0..] ~ ~ ~ 2 1.2 0
execute at @e[type=guardian,tag=enmity.elder_minion] run playsound entity.illusioner.mirror_move hostile @a[distance=0..] ~ ~ ~ 2 2 0
execute at @e[type=guardian,tag=enmity.elder_minion] run playsound entity.illusioner.mirror_move hostile @a[distance=0..] ~ ~ ~ 2 0 0
summon marker ~ ~3 ~ {Tags:["enmity.elder_summon_anchor"]}
tag @s add enmity.invulnerable
data modify entity @s Invulnerable set value 1