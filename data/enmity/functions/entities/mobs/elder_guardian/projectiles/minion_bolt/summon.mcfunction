playsound entity.elder_guardian.death neutral @a[distance=0..] ~ ~ ~ 2 2 0
playsound block.note_block.basedrum neutral @a[distance=0..] ~ ~ ~ 2 0 0
playsound block.note_block.basedrum neutral @a[distance=0..] ~ ~ ~ 2 0 0
particle dust 0.3 0.6 1 1 ~ ~ ~ 0.5 0.5 0.5 0 50 force
summon minecraft:marker ~ ~ ~ {Tags:["enmity.new","enmity.elder_bolt","enmity.projectile","enmity.anchored"]}
execute if score %difficulty enmity.value matches 1 run scoreboard players set @e[type=marker,tag=enmity.elder_bolt,tag=enmity.new,limit=1] enmity.dmg 11
execute if score %difficulty enmity.value matches 2 run scoreboard players set @e[type=marker,tag=enmity.elder_bolt,tag=enmity.new,limit=1] enmity.dmg 14
scoreboard players operation @e[type=marker,tag=enmity.new,limit=1] enmity.player_id = @s enmity.player_id
execute as @e[type=marker,limit=1,tag=enmity.new] at @s run tp @s ~ ~ ~ facing entity @p[tag=enmity.elder_target]
scoreboard players set @e[type=marker,tag=enmity.new,limit=1] enmity.age 80
tag @e[type=marker,limit=1,tag=enmity.new] remove enmity.new