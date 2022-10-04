kill @s
playsound block.beacon.deactivate neutral @a[distance=0..] ~ ~ ~ 2 0 0
playsound block.soul_sand.break neutral @a[distance=0..] ~ ~ ~ 2 0 0
playsound block.soul_sand.break neutral @a[distance=0..] ~ ~ ~ 2 0.1 0
playsound block.soul_sand.break neutral @a[distance=0..] ~ ~ ~ 2 0.2 0
particle dragon_breath ~ ~ ~ 0.2 0.2 0.2 0.5 30 force
execute if score %difficulty enmity.value matches 1 run summon area_effect_cloud ~ ~ ~ {Duration:200,Radius:3,RadiusPerTick:-0.015f,Effects:[{Id:7,Amplifier:1}],Particle:"dragon_breath",Tags:["enmity.new","enmity.custom","enmity.dragon_breath_cloud","enmity.dragon_projectile"]}
execute if score %difficulty enmity.value matches 2 run summon area_effect_cloud ~ ~ ~ {Duration:200,Radius:4,RadiusPerTick:-0.01f,Effects:[{Id:7,Amplifier:2}],Particle:"dragon_breath",Tags:["enmity.new","enmity.custom","enmity.dragon_breath_cloud","enmity.dragon_projectile"]}
data modify entity @e[type=area_effect_cloud,tag=enmity.new,limit=1] OwnerUUID set from entity @e[type=ender_dragon,limit=1] UUID
tag @e[type=area_effect_cloud,limit=1,tag=enmity.new] remove enmity.new