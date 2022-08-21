summon marker ~ ~2 ~ {Tags:["enmity.projectile","enmity.withers_ray_summon","enmity.new"]}
tp @e[type=marker,tag=enmity.new,limit=1] @s
execute as @e[type=marker,tag=enmity.new,limit=1] at @s run tp @s ~ ~2 ~ facing entity @a[tag=enmity.wither_target,limit=1] eyes
execute as @e[type=marker,tag=enmity.new,limit=1] at @s positioned ~ ~0.3 ~ run function enmity:entities/mobs/wither/projectiles/ray/raycast
scoreboard players set @e[type=marker,tag=enmity.new,limit=1] enmity.raycast 0
playsound block.redstone_torch.burnout neutral @a[distance=0..] ~ ~ ~ 2 0.7 0
playsound entity.zombie_villager.cure neutral @a[distance=0..] ~ ~ ~ 0.5 2 0
tag @e[type=marker,tag=enmity.new,limit=1] remove enmity.new