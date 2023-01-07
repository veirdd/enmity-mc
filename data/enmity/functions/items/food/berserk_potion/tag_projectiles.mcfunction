tag @s add enmity.this
execute as @e[type=#enmity:common_projectiles,tag=enmity.projectile] if score @s enmity.player_id = @p[tag=enmity.this] enmity.player_id if score @s enmity.dmg matches 0.. run tag @s add enmity.berserked
tag @s remove enmity.this