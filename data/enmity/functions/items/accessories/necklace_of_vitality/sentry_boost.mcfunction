scoreboard players add @s enmity.max_snt 2
tag @s add enmity.this
execute as @e[type=#enmity:used_as_sentries,tag=enmity.sentry] if score @s enmity.player_id = @p[tag=enmity.this] enmity.player_id run tag @s add enmity.this
tag @s remove enmity.this
execute store result score @s enmity.math_b if entity @e[type=#enmity:used_as_sentries,tag=enmity.this]
scoreboard players operation @s enmity.math_b /= %const_2 enmity.value
scoreboard players operation @s enmity.dmg_rdc += @s enmity.math_b
scoreboard players operation @s enmity.max_hp += @s enmity.math_b
scoreboard players operation @s enmity.max_hp += @s enmity.math_b
tag @e[type=#enmity:used_as_sentries,tag=enmity.this] remove enmity.this