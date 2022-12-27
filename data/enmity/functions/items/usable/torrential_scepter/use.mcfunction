scoreboard players remove @s enmity.mana 100
scoreboard players add @s enmity.cooldown 24
playsound entity.elder_guardian.ambient neutral @a[distance=0..] ~ ~ ~ 2 2 0
playsound entity.elder_guardian.ambient neutral @a[distance=0..] ~ ~ ~ 2 1.8 0
playsound entity.elder_guardian.ambient neutral @a[distance=0..] ~ ~ ~ 2 1.6 0
summon minecraft:marker ~ ~1 ~ {Tags:["enmity.new","enmity.torrential_bolt","enmity.projectile","enmity.1"]}
summon minecraft:marker ~ ~1 ~ {Tags:["enmity.new","enmity.torrential_bolt","enmity.projectile","enmity.2"]}
summon minecraft:marker ~ ~1 ~ {Tags:["enmity.new","enmity.torrential_bolt","enmity.projectile","enmity.3"]}
summon minecraft:marker ~2 ~2 ~ {Tags:["enmity.new","enmity.torrential_bolt_anchor","enmity.projectile","enmity.1"]}
summon minecraft:marker ~-1 ~2 ~1.732 {Tags:["enmity.new","enmity.torrential_bolt_anchor","enmity.projectile","enmity.2"]}
summon minecraft:marker ~-1 ~2 ~-1.732 {Tags:["enmity.new","enmity.torrential_bolt_anchor","enmity.projectile","enmity.3"]}
execute as @e[type=marker,tag=enmity.torrential_bolt,tag=enmity.new,tag=enmity.1] at @s run tp @s ~ ~ ~ facing entity @e[type=marker,tag=enmity.torrential_bolt_anchor,tag=enmity.new,tag=enmity.1,limit=1]
execute as @e[type=marker,tag=enmity.torrential_bolt,tag=enmity.new,tag=enmity.2] at @s run tp @s ~ ~ ~ facing entity @e[type=marker,tag=enmity.torrential_bolt_anchor,tag=enmity.new,tag=enmity.2,limit=1]
execute as @e[type=marker,tag=enmity.torrential_bolt,tag=enmity.new,tag=enmity.3] at @s run tp @s ~ ~ ~ facing entity @e[type=marker,tag=enmity.torrential_bolt_anchor,tag=enmity.new,tag=enmity.3,limit=1]
kill @e[type=marker,tag=enmity.torrential_bolt_anchor,tag=enmity.new]
scoreboard players set @e[type=marker,tag=enmity.torrential_bolt,tag=enmity.new] enmity.dmg 12
scoreboard players operation @e[type=marker,tag=enmity.new] enmity.dmg += @s enmity.dmg_bst
scoreboard players operation @e[type=marker,tag=enmity.new] enmity.player_id = @s enmity.player_id
execute if score @s enmity.player_targeting matches 1 run tag @e[type=marker,tag=enmity.new] add enmity.player_targeting
tag @e[type=marker,tag=enmity.torrential_bolt,tag=enmity.new] remove enmity.new