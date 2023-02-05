execute if entity @e[type=marker,tag=enmity.this_sentry] unless entity @e[type=marker,tag=enmity.this] run summon marker ~ ~ ~ {Tags:["enmity.sentry_anchor","enmity.projectile","enmity.new"]}
scoreboard players operation @e[type=marker,tag=enmity.new] enmity.player_id = @s enmity.player_id
tag @e[type=marker,tag=enmity.new] remove enmity.new
execute if score @s enmity.snt_ct matches 0 run kill @e[type=marker,tag=enmity.this]