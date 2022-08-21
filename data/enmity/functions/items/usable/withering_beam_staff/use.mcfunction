particle smoke ^ ^0.5 ^ 0.5 0.5 0.5 0 20 force
playsound block.redstone_torch.burnout neutral @a[distance=0..] ~ ~ ~ 2 0.7 0
playsound entity.zombie_villager.cure neutral @a[distance=0..] ~ ~ ~ 0.5 2 0
scoreboard players remove @s enmity.mana 140
scoreboard players set @s enmity.cooldown 32
summon marker ^ ^ ^ {Tags:["enmity.projectile","enmity.withering_beam_track","enmity.new"]}
scoreboard players set @e[type=marker,tag=enmity.new] enmity.dmg 31
scoreboard players operation @e[type=marker,tag=enmity.new] enmity.dmg += @s enmity.dmg_bst
scoreboard players operation @e[type=marker,tag=enmity.new] enmity.player_id = @s enmity.player_id
tag @s add enmity.this
execute as @e[type=marker,tag=enmity.new] at @s rotated as @p[tag=enmity.this] run tp @s ^ ^ ^0.5 facing ^ ^ ^1
execute as @e[type=marker,tag=enmity.new] at @s run function enmity:items/usable/withering_beam_staff/raycast
tag @s remove enmity.this
scoreboard players set @e[type=marker,tag=enmity.new] enmity.raycast 0
tag @e[type=marker,tag=enmity.new] remove enmity.in_solid
tag @e[type=marker,tag=enmity.new] remove enmity.new