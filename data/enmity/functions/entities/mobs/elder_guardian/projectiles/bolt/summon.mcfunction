playsound entity.elder_guardian.ambient neutral @a[distance=0..] ~ ~ ~ 1 2 0
summon minecraft:marker ~ ~ ~ {Tags:["enmity.new","enmity.elder_bolt","enmity.projectile"]}
execute if score %difficulty enmity.value matches 1 run scoreboard players set @e[type=marker,tag=enmity.new] enmity.dmg 12
execute if score %difficulty enmity.value matches 2 run scoreboard players set @e[type=marker,tag=enmity.new] enmity.dmg 14
scoreboard players operation @e[type=marker,tag=enmity.new,limit=1] enmity.player_id = @s enmity.player_id
execute as @e[type=marker,limit=1,tag=enmity.new] run tp @s ~ ~ ~ facing entity @e[type=marker,limit=1,tag=enmity.elder_bolt_anchor]
tag @e[type=marker,limit=1,tag=enmity.new] remove enmity.new