playsound entity.warden.nearby_closest neutral @a[distance=0..] ~ ~ ~ 2 2 0
playsound entity.glow_squid.squirt neutral @a[distance=0..] ~ ~ ~ 2 0.5 0
particle warped_spore ~ ~3 ~ 0.3 0.3 0.3 0 50 force
particle dust 0 1 1 1 ~ ~3 ~ 0.4 0.4 0.4 0 30 force
summon bat ~ ~3 ~ {Silent:1,Invulnerable:1,Tags:["enmity.projectile","enmity.new","enmity.sculkbolt"]}
summon bat ~ ~3 ~ {Silent:1,Invulnerable:1,Tags:["enmity.projectile","enmity.new","enmity.sculkbolt"]}
summon bat ~ ~3 ~ {Silent:1,Invulnerable:1,Tags:["enmity.projectile","enmity.new","enmity.sculkbolt"]}
execute if score %difficulty enmity.value matches 2 run scoreboard players set @e[type=bat,tag=enmity.new] enmity.dmg 7
execute if score %difficulty enmity.value matches 1 run scoreboard players set @e[type=bat,tag=enmity.new] enmity.dmg 5
effect give @e[type=bat,tag=enmity.new] invisibility 1000000 255 true
tag @e[type=bat,tag=enmity.new] remove enmity.new