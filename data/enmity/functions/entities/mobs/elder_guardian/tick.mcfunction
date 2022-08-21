kill @s[tag=!enmity.boss]
tp @s[tag=!enmity.dashing,tag=!enmity.adjust] ~ ~ ~ facing entity @p[tag=enmity.elder_target]
execute if entity @s[nbt={HurtTime:10s}] run playsound entity.elder_guardian.hurt hostile @a[distance=0..] ~ ~ ~ 2 0.7 0
execute store result bossbar enmity.elder_guardian value run data get entity @s Health
execute if score @s enmity.phase matches 3 run function enmity:entities/mobs/elder_guardian/phases/laser/tick
execute if score @s enmity.phase matches 1 run function enmity:entities/mobs/elder_guardian/phases/bolts/tick
execute if score @s[tag=!enmity.dashing] enmity.phase matches 4 run function enmity:entities/mobs/elder_guardian/phases/dashes/tick_charging
execute if score @s[tag=enmity.dashing] enmity.phase matches 4 run function enmity:entities/mobs/elder_guardian/phases/dashes/tick_dashing
execute if score @s enmity.phase matches 5 if score @s enmity.age matches 10 run function enmity:entities/mobs/elder_guardian/phases/summon/summon
execute if score @s enmity.phase matches 5 run function enmity:entities/mobs/elder_guardian/phases/summon/tick
scoreboard players add @s enmity.age 1
execute if score @s enmity.cooldown matches 1.. run scoreboard players remove @s enmity.cooldown 1
execute unless score @s enmity.phase matches 4 if score @s enmity.age matches 20.. run tag @s remove enmity.adjust
execute if predicate enmity:environment/in_the_nether run function enmity:entities/mobs/elder_guardian/despawning/silent