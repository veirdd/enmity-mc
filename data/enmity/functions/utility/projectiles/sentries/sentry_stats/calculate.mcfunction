tag @s add enmity.this
execute as @e[type=#enmity:used_as_sentries,tag=enmity.sentry] if score @s enmity.player_id = @p[tag=enmity.this] enmity.player_id run tag @s add enmity.this
scoreboard players set @s enmity.math_a 0
execute as @e[type=#enmity:used_as_sentries,tag=enmity.sentry] run function enmity:utility/projectiles/sentries/sentry_stats/mana_drain
tag @s remove enmity.this
scoreboard players operation @s enmity.mana -= @s enmity.math_a
execute if score @s enmity.mana matches ..10 run function enmity:utility/projectiles/sentries/remove_sentry