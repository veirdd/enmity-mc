tag @s add enmity.this
execute as @e[tag=enmity.sentry] if score @s enmity.player_id = @a[tag=enmity.this,limit=1] enmity.player_id run tag @s add enmity.this
execute as @e[tag=enmity.sentry,tag=enmity.this] run function enmity:utility/projectiles/sentries/filter_by_age
execute as @e[tag=enmity.sentry,tag=enmity.this,limit=1] at @s run function enmity:utility/projectiles/sentries/universal_sentry_die
tag @e[tag=enmity.this] remove enmity.this