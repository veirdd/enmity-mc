scoreboard players set @s enmity.flight -10
playsound entity.wither.shoot player @a[distance=0..] ~ ~ ~ 2 1.7 0
playsound block.soul_sand.step player @a[distance=0..] ~ ~ ~ 2 0.7 0
playsound block.soul_sand.step player @a[distance=0..] ~ ~ ~ 2 0.7 0
playsound block.soul_sand.step player @a[distance=0..] ~ ~ ~ 2 0.7 0
tag @s add enmity.this
execute as @e[type=area_effect_cloud,tag=enmity.celeste_dash] if score @s enmity.player_id = @p[tag=enmity.this] enmity.player_id run kill @s
tag @s remove enmity.this
summon area_effect_cloud ~ ~ ~ {Duration:5,Tags:["enmity.new","enmity.projectile","enmity.celeste_dash"]}
scoreboard players operation @e[type=area_effect_cloud,tag=enmity.new] enmity.player_id = @s enmity.player_id
tp @e[type=area_effect_cloud,tag=enmity.new] ~ ~ ~ facing ^ ^ ^1
tag @e[type=area_effect_cloud,tag=enmity.new] remove enmity.new