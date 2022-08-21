playsound entity.ender_dragon.hurt neutral @a[distance=0..] ~ ~ ~ 2 0 0
summon minecraft:marker ~ ~ ~ {Tags:["enmity.new","enmity.dragon_projectile","enmity.projectile","enmity.dragon_bolt"]}
summon minecraft:marker ~ ~ ~ {Tags:["enmity.new","enmity.dragon_projectile","enmity.projectile","enmity.dragon_bolt"]}
summon minecraft:marker ~ ~ ~ {Tags:["enmity.new","enmity.dragon_projectile","enmity.projectile","enmity.dragon_bolt"]}
summon minecraft:marker ~ ~ ~ {Tags:["enmity.new","enmity.dragon_projectile","enmity.projectile","enmity.dragon_bolt"]}
execute if score %difficulty enmity.value matches 2 run scoreboard players set @e[type=marker,tag=enmity.new] enmity.dmg 19
execute if score %difficulty enmity.value matches 1 run scoreboard players set @e[type=marker,tag=enmity.new] enmity.dmg 18
execute as @e[type=marker,tag=enmity.new] at @s run function enmity:utility/projectiles/random_spread/360dg
tag @e[type=marker,tag=enmity.new] remove enmity.new