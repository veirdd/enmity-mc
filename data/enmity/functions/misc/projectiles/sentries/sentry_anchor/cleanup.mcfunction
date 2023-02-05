tag @s add enmity.this
execute as @a if score @s enmity.player_id = @e[type=marker,tag=enmity.this,limit=1] enmity.player_id run tag @s add enmity.this
execute unless entity @p[tag=enmity.this] run kill @s
tag @a[tag=enmity.this] remove enmity.this
execute as @e[type=marker,tag=enmity.sentry_anchor] if score @s enmity.player_id = @e[type=marker,tag=enmity.this,limit=1] enmity.player_id run kill @s
tag @s remove enmity.this