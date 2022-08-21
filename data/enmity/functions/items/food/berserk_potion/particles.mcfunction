tag @s add enmity.this
execute as @e[type=#enmity:not_living,tag=enmity.projectile] if score @s enmity.player_id = @a[tag=enmity.this,limit=1] enmity.player_id if score @s enmity.dmg matches 0.. at @s run function enmity:items/food/berserk_potion/particle_adjust
tag @s remove enmity.this