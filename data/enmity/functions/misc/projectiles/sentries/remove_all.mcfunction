scoreboard players set @s enmity.remove_sentries 0
scoreboard players enable @s enmity.remove_sentries
execute at @s run playsound block.note_block.hat master @s ~ ~ ~ 2 2 0
tellraw @s [{"text":"Removed all sentries.","color":"gray"}]
tag @s add enmity.this
execute as @e[tag=enmity.sentry] if score @s enmity.player_id = @a[tag=enmity.this,limit=1] enmity.player_id run tag @s add enmity.this
execute as @e[tag=enmity.sentry,tag=enmity.this] at @s run function enmity:misc/projectiles/sentries/universal_sentry_die
tag @s remove enmity.this