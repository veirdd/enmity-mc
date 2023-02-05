tag @s add enmity.this

execute as @e[type=marker,tag=enmity.sentry_anchor] if score @s enmity.player_id = @p[tag=enmity.this] enmity.player_id run tag @s add enmity.this
execute as @e[type=#enmity:used_as_sentries,tag=enmity.sentry,tag=enmity.following] if score @s enmity.player_id = @p[tag=enmity.this] enmity.player_id run tag @s add enmity.this_sentry

execute if entity @e[type=#enmity:used_as_sentries,tag=enmity.this_sentry] unless entity @e[type=marker,tag=enmity.this] run summon marker ~ ~ ~ {Tags:["enmity.sentry_anchor","enmity.projectile","enmity.this","enmity.new"]}
scoreboard players operation @e[type=marker,tag=enmity.new] enmity.player_id = @s enmity.player_id
tag @e[type=marker,tag=enmity.new] remove enmity.new

scoreboard players set @e[type=marker,tag=enmity.this] enmity.snt_ct 0
execute as @e[type=#enmity:used_as_sentries,tag=enmity.this_sentry] run scoreboard players add @e[type=marker,tag=enmity.this] enmity.snt_ct 1
execute at @s anchored eyes run tp @e[type=marker,tag=enmity.this] ^ ^ ^
execute as @e[type=marker,tag=enmity.this,scores={enmity.age=5..}] at @s run function enmity:misc/projectiles/sentries/sentry_anchor/anchor

tag @e[type=marker,tag=enmity.this] remove enmity.this
tag @e[type=#enmity:used_as_sentries,tag=enmity.this_sentry] remove enmity.this_sentry
tag @s remove enmity.this