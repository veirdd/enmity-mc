playsound entity.evoker.cast_spell neutral @a[distance=0..] ~ ~ ~ 2 0.4 0
particle squid_ink ~ ~2 ~ 0.3 0.3 0.3 0 30 force
particle smoke ~ ~2 ~ 0.2 0.2 0.2 0.3 40 force
summon bat ~ ~0.5 ~ {Silent:1,Invulnerable:1,Tags:["enmity.projectile","enmity.new","enmity.homing_soul"]}
summon bat ~ ~0.5 ~ {Silent:1,Invulnerable:1,Tags:["enmity.projectile","enmity.new","enmity.homing_soul"]}
execute if score %difficulty enmity.value matches 2 run summon bat ~ ~0.5 ~ {Silent:1,Invulnerable:1,Tags:["enmity.projectile","enmity.new","enmity.homing_soul"]}
execute if score %difficulty enmity.value matches 2 run scoreboard players set @e[type=bat,tag=enmity.homing_soul,tag=enmity.new] enmity.dmg 9
execute if score %difficulty enmity.value matches 1 run scoreboard players set @e[type=bat,tag=enmity.homing_soul,tag=enmity.new] enmity.dmg 7
effect give @e[type=bat,tag=enmity.new] invisibility 1000000 255 true
tag @e[type=bat,tag=enmity.new] remove enmity.new