scoreboard players set @s enmity.snt_ct 0
tag @s add enmity.this
execute as @e[tag=enmity.sentry] if score @s enmity.player_id = @a[tag=enmity.this,limit=1] enmity.player_id run scoreboard players add @a[tag=enmity.this,limit=1] enmity.snt_ct 1
tag @s remove enmity.this