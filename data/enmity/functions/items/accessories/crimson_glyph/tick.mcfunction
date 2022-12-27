tag @s add enmity.this
execute as @e[type=#enmity:common_projectiles,tag=enmity.projectile,scores={enmity.age=3..}] if score @s enmity.player_id = @p[tag=enmity.this] enmity.player_id run tag @s add enmity.player_targeting
execute as @e[type=#enmity:common_projectiles,tag=enmity.projectile,scores={enmity.age=3..}] if score @s enmity.player_id = @p[tag=enmity.this] enmity.player_id run scoreboard players set @s enmity.player_id -1
tag @s remove enmity.this