tag @s add enmity.this
execute as @e[type=#enmity:used_as_sentries,tag=enmity.sentry] if score @s enmity.player_id = @p[tag=enmity.this] enmity.player_id run tag @s add enmity.this
scoreboard players set @s enmity.math_a 0
execute as @e[type=#enmity:used_as_sentries,tag=enmity.this] run function enmity:misc/projectiles/sentries/sentry_stats/mana_drain
tag @s remove enmity.this
execute if entity @s[predicate=enmity:entity/has_armor/silvan_set] run scoreboard players remove @s enmity.math_a 3
execute if entity @s[predicate=enmity:entity/has_armor/crystalline_set,predicate=enmity:entity/has_armor/summoner_helmet] run scoreboard players remove @s enmity.math_a 4
execute if entity @s[predicate=enmity:entity/has_armor/tidal_set,predicate=enmity:entity/has_armor/summoner_helmet] run scoreboard players remove @s enmity.math_a 6
execute if entity @s[predicate=enmity:entity/has_armor/celestial_set,predicate=enmity:entity/has_armor/summoner_helmet] run scoreboard players remove @s enmity.math_a 10
execute if score @s enmity.math_a matches ..-1 run scoreboard players set @s enmity.math_a 0
scoreboard players operation @s enmity.mana -= @s enmity.math_a
execute if score @s enmity.mana matches ..10 run function enmity:misc/projectiles/sentries/remove_sentry
tag @e[tag=enmity.this] remove enmity.this