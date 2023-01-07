scoreboard players set @s enmity.snt_ct 0
tag @s add enmity.this
execute as @e[type=#enmity:used_as_sentries,tag=enmity.sentry] if score @s enmity.player_id = @p[tag=enmity.this] enmity.player_id run scoreboard players add @p[tag=enmity.this] enmity.snt_ct 1
tag @s remove enmity.this