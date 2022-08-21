execute unless entity @e[type=marker,tag=enmity.waystone_teleporter] run scoreboard players set @s enmity.math_a 1
execute if entity @e[type=marker,tag=enmity.waystone_teleporter] run function enmity:blocks/functions/waystone/set_id_loop
scoreboard players operation @s enmity.waystone = @s enmity.math_a
execute at @e[type=marker,tag=enmity.setup,limit=1] run setblock ~ -64 ~ oak_sign{Text1:'{"score":{"name":"@e[type=area_effect_cloud,tag=enmity.this,limit=1]","objective":"enmity.waystone"},"color":"light_purple"}'}
execute at @e[type=marker,tag=enmity.setup,limit=1] run data modify entity @s CustomName set from block ~ -64 ~ Text1
execute at @e[type=marker,tag=enmity.setup,limit=1] run setblock ~ -64 ~ bedrock
playsound entity.player.levelup block @a[distance=0..] ~ ~ ~ 2 1 0
particle enchant ~ ~0.7 ~ 0.4 0.5 0.4 0 50
execute at @e[type=marker,tag=enmity.setup,limit=1] run summon marker ~ ~ ~ {Tags:["enmity.new","enmity.waystone_teleporter"]}
scoreboard players operation @e[type=marker,tag=enmity.new] enmity.waystone = @s enmity.waystone
execute store result score @e[type=marker,tag=enmity.new] enmity.posx run data get entity @s Pos[0]
execute store result score @e[type=marker,tag=enmity.new] enmity.posy run data get entity @s Pos[1]
execute store result score @e[type=marker,tag=enmity.new] enmity.posz run data get entity @s Pos[2]
execute if predicate enmity:environment/in_overworld run scoreboard players set @e[type=marker,tag=enmity.new] enmity.value 0
execute if predicate enmity:environment/in_the_nether run scoreboard players set @e[type=marker,tag=enmity.new] enmity.value -1
execute if predicate enmity:environment/in_the_end run scoreboard players set @e[type=marker,tag=enmity.new] enmity.value 1
scoreboard players add @e[type=marker,tag=enmity.new] enmity.posy 1
tag @e[type=marker,tag=enmity.new] remove enmity.new
tag @s remove enmity.this