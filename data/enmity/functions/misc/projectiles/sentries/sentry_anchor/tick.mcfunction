tag @s add enmity.this
execute as @e[type=marker,tag=enmity.sentry_anchor] if score @s enmity.player_id = @p[tag=enmity.this] enmity.player_id run tag @s add enmity.this
execute as @e[tag=enmity.sentry,tag=enmity.following] if score @s enmity.player_id = @p[tag=enmity.this] enmity.player_id run tag @s add enmity.this_sentry

function enmity:misc/projectiles/sentries/sentry_anchor/check
scoreboard players set @e[type=marker,tag=enmity.this] enmity.snt_ct 0
execute as @e[tag=enmity.this_sentry] run scoreboard players add @e[type=marker,tag=enmity.this] enmity.snt_ct 1
execute at @s anchored eyes run tp @e[type=marker,tag=enmity.this] ^ ^ ^
execute as @e[type=marker,tag=enmity.this,scores={enmity.age=5..}] at @s run function enmity:misc/projectiles/sentries/sentry_anchor/anchor

tag @e[type=marker,tag=enmity.this] remove enmity.this
tag @e[tag=enmity.this_sentry] remove enmity.this_sentry
tag @s remove enmity.this