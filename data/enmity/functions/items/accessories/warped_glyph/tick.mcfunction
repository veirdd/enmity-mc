tag @s add enmity.this
execute as @e[type=marker,tag=enmity.warped_glyph] if score @s enmity.player_id = @p[tag=enmity.this] enmity.player_id run tag @s add enmity.this
execute unless entity @e[type=marker,tag=enmity.this] run function enmity:items/accessories/warped_glyph/summon_anchor
execute as @e[type=marker,tag=enmity.this,limit=1] run tag @s add enmity.this2
execute as @e[type=marker,tag=enmity.this2] run kill @e[type=marker,tag=enmity.this,tag=!enmity.this2]
execute as @e[type=marker,tag=enmity.this2] run tag @s remove enmity.this2
tp @e[type=marker,tag=enmity.this] ~ ~ ~
execute as @e[type=marker,tag=enmity.this] if score @s enmity.rotation matches 180.. run scoreboard players set @s enmity.rotation -179
scoreboard players add @e[type=marker,tag=enmity.this] enmity.rotation 5
execute as @e[type=marker,tag=enmity.this] store result entity @s Rotation[0] float 1 run scoreboard players get @s enmity.rotation
execute as @e[type=marker,tag=enmity.this] at @s positioned ~ ~1.3 ~ rotated ~ 0 run tp @s ^ ^ ^1
execute as @e[type=marker,tag=enmity.this] at @s rotated as @p[tag=enmity.this] run tp @s ~ ~ ~ facing ^ ^ ^1
execute at @e[type=marker,tag=enmity.this] run particle dust 0 0.5 0.7 0.5 ~ ~ ~ 0.05 0.05 0.05 0 7 force
tag @e[type=marker,tag=enmity.this] remove enmity.this
tag @s remove enmity.this
tag @s add enmity.accessories.warped_glyph