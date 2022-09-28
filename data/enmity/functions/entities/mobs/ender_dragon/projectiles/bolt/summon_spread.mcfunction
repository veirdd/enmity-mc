execute as @a[distance=..256] at @s facing entity @e[type=ender_dragon,limit=1] eyes positioned ^ ^ ^24 run playsound entity.ender_dragon.hurt neutral @s[distance=0..] ~ ~ ~ 2 0 0
execute as @a[distance=..256] at @s facing entity @e[type=ender_dragon,limit=1] eyes positioned ^ ^ ^24 run playsound entity.ender_dragon.hurt neutral @s[distance=0..] ~ ~ ~ 2 0.4 0
execute as @a[distance=..256] at @s facing entity @e[type=ender_dragon,limit=1] eyes positioned ^ ^ ^24 run playsound entity.ender_dragon.hurt neutral @s[distance=0..] ~ ~ ~ 2 0.4 0
execute as @a[distance=..256] at @s facing entity @e[type=ender_dragon,limit=1] eyes positioned ^ ^ ^24 run playsound block.ender_chest.open neutral @s[distance=0..] ~ ~ ~ 2 0 0
summon minecraft:marker ~ ~ ~ {Tags:["enmity.new","enmity.dragon_projectile","enmity.projectile","enmity.dragon_bolt"]}
summon minecraft:marker ~ ~ ~ {Tags:["enmity.new","enmity.dragon_projectile","enmity.projectile","enmity.dragon_bolt"]}
summon minecraft:marker ~ ~ ~ {Tags:["enmity.new","enmity.dragon_projectile","enmity.projectile","enmity.dragon_bolt"]}
summon minecraft:marker ~ ~ ~ {Tags:["enmity.new","enmity.dragon_projectile","enmity.projectile","enmity.dragon_bolt"]}
execute if score %difficulty enmity.value matches 2 run scoreboard players set @e[type=marker,tag=enmity.new] enmity.dmg 19
execute if score %difficulty enmity.value matches 1 run scoreboard players set @e[type=marker,tag=enmity.new] enmity.dmg 18
execute as @e[type=marker,tag=enmity.new] at @s run function enmity:utility/projectiles/random_spread/360dg
tag @e[type=marker,tag=enmity.new] remove enmity.new