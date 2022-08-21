scoreboard players set @s enmity.waystone 0
tag @s remove enmity.teleport_enabled
tag @s add enmity.this
execute as @e[type=marker,tag=enmity.this] run function enmity:blocks/functions/waystone/teleporter
execute if score @e[type=marker,tag=enmity.this,limit=1] enmity.value matches 0 in minecraft:overworld positioned as @s run tp @s ~ ~ ~
execute if score @e[type=marker,tag=enmity.this,limit=1] enmity.value matches -1 in minecraft:the_nether positioned as @s run tp @s ~ ~ ~
execute if score @e[type=marker,tag=enmity.this,limit=1] enmity.value matches 1 in minecraft:the_end positioned as @s run tp @s ~ ~ ~
execute at @s run tp @s ~0.5 ~ ~0.5
execute at @s run fill ~ ~ ~ ~ ~1 ~ air destroy
execute at @s run playsound block.portal.travel neutral @s ~ ~ ~ 0.5 1 0
execute at @s run particle portal ~ ~1 ~ 0.2 0.2 0.2 1.5 200
scoreboard players reset @s enmity.waystone_tp