tag @s add enmity.this
tp @s[scores={enmity.age=79}] ~ ~ ~ facing entity @p[tag=enmity.elder_target]
execute if score @s enmity.age matches 79 run stopsound @a[distance=..24] neutral entity.elder_guardian.ambient
execute if score @s enmity.age matches 79 run playsound entity.elder_guardian.death neutral @a[distance=0..] ~ ~ ~ 2 2 0
execute if score @s enmity.age matches 79 run playsound block.note_block.basedrum neutral @a[distance=0..] ~ ~ ~ 2 0 0
execute if score @s enmity.age matches 79 run playsound block.note_block.basedrum neutral @a[distance=0..] ~ ~ ~ 2 0 0
execute if score @s enmity.age matches 79 run particle dust 0.3 0.6 1 1 ~ ~ ~ 0.5 0.5 0.5 0 50 force
execute if score @s[tag=!enmity.reached_target] enmity.age matches 80.. run function enmity:utility/projectiles/random_spread/5dg
execute if entity @s[tag=enmity.reached_target] unless entity @p[distance=..4] run function enmity:utility/projectiles/random_spread/10dg
execute if score %difficulty enmity.value matches 2 if entity @p[tag=enmity.elder_target,distance=..3] run tag @s add enmity.reached_target
execute if score %difficulty enmity.value matches 2 if entity @p[tag=enmity.elder_target,distance=3..12] run tp @s[tag=!enmity.reached_target] ~ ~ ~ facing entity @p[tag=enmity.elder_target] eyes
execute if score %difficulty enmity.value matches 1 if entity @p[tag=enmity.elder_target,distance=..4] run tag @s add enmity.reached_target
execute if score %difficulty enmity.value matches 1 if entity @p[tag=enmity.elder_target,distance=4..12] run tp @s[tag=!enmity.reached_target] ~ ~ ~ facing entity @p[tag=enmity.elder_target] eyes
tp @s[scores={enmity.age=80..}] ^ ^ ^0.8
particle dust 0 0 1 1 ~ ~ ~ 0 0 0 0 1 force
particle rain ~ ~ ~ 0.08 0.08 0.08 0 5 force
execute if score @s enmity.age matches 80.. run particle rain ^ ^ ^0.4 0.08 0.08 0.08 0 5 force
execute positioned ~-0.3 ~-0.3 ~-0.3 as @e[scores={iframes=0},type=!#enmity:not_living,tag=!enmity.target_dummy,tag=!enmity.projectile,dx=0,limit=1] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id positioned ~-0.39 ~-0.39 ~-0.39 if entity @s[dx=0] run tag @s add enmity.hit
execute positioned ^ ^ ^0.4 positioned ~-0.3 ~-0.3 ~-0.3 as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.target_dummy,tag=!enmity.projectile,dx=0,limit=1] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id positioned ~-0.39 ~-0.39 ~-0.39 if entity @s[dx=0] run tag @s add enmity.hit
execute if entity @e[type=!#enmity:not_living,tag=enmity.hit] run function enmity:entities/mobs/elder_guardian/projectiles/bolt/damage
execute if entity @s[scores={enmity.age=140..}] run function enmity:entities/mobs/elder_guardian/projectiles/bolt/die
execute if entity @s[scores={enmity.impact_ct=3..}] run function enmity:entities/mobs/elder_guardian/projectiles/bolt/die
tag @s remove enmity.this