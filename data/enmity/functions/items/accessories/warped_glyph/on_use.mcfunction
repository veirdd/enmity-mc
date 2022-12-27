tag @s add enmity.this
execute as @e[type=marker,tag=enmity.warped_glyph] if score @s enmity.player_id = @p[tag=enmity.this] enmity.player_id run tag @s add enmity.this
scoreboard players operation @e[type=marker,tag=enmity.this] enmity.use = @s enmity.use
scoreboard players operation @e[type=marker,tag=enmity.this] enmity.mana = @s enmity.mana
scoreboard players operation @e[type=marker,tag=enmity.this] enmity.dmg_bst = @s enmity.dmg_bst
scoreboard players operation @e[type=marker,tag=enmity.this] enmity.player_targeting = @s enmity.player_targeting
scoreboard players set @e[type=marker,tag=enmity.this] enmity.raycast 0
execute unless entity @s[predicate=enmity:entity/is_sneaking] as @e[type=marker,tag=enmity.this] run function enmity:items/usable
scoreboard players add @s enmity.cooldown 4
scoreboard players operation @s enmity.math_a = @s enmity.cooldown
scoreboard players operation @s enmity.math_a %= %const_4 enmity.value
execute unless score @s enmity.math_a matches 0 run scoreboard players add @s enmity.cooldown 2
tag @e[type=marker,tag=enmity.this] remove enmity.this
tag @s remove enmity.this