execute unless score @s enmity.phase matches 0 unless score @s enmity.math_c matches ..0 run scoreboard players remove @s enmity.math_c 1
execute if score @s enmity.math_c matches 0 unless score @s enmity.phase matches 0 run function enmity:entities/mobs/wither/change_phase
execute unless score @s enmity.phase matches 4 if entity @a[tag=enmity.wither_target,distance=32..48] run function enmity:entities/mobs/wither/retarget
execute if score @s enmity.phase matches 4 if entity @a[tag=enmity.wither_target,distance=24..48] run function enmity:entities/mobs/wither/retarget
execute if score @s enmity.phase matches 4 as @a[gamemode=!creative,gamemode=!spectator,distance=24..48] at @s run playsound block.redstone_torch.burnout neutral @s[distance=0..] ~ ~ ~ 2 0.5 0
execute if score @s enmity.phase matches 4 as @a[gamemode=!creative,gamemode=!spectator,distance=24..48] run title @s title ""
execute if score @s enmity.phase matches 4 as @a[gamemode=!creative,gamemode=!spectator,distance=24..48] run title @s subtitle {"text":"You are too far away from the Wither.","color":"gray"}
execute if score @s enmity.phase matches 4 as @a[gamemode=!creative,gamemode=!spectator,distance=24..48] run function enmity:misc/health_modification/reduce_health_by_3
execute if score @s enmity.phase matches 4 as @a[gamemode=!creative,gamemode=!spectator,distance=24..48] run playsound entity.player.hurt player @a[distance=0..] ~ ~ ~ 1 1 0
execute if score @s enmity.phase matches 2 if score @s enmity.age matches 40.. run function enmity:entities/mobs/wither/phases/homing
execute if score %difficulty enmity.value matches 1 if score @s enmity.phase matches 5 run function enmity:entities/mobs/wither/phases/ray
execute if score @s enmity.phase matches 3 if score @s enmity.age matches 40 run function enmity:entities/mobs/wither/phases/summon
execute unless score @s[scores={enmity.phase=1..}] enmity.phase matches 4 run data modify entity @s NoAI set value 0b
execute unless score @s[scores={enmity.phase=1..}] enmity.phase matches 4 run schedule function enmity:entities/mobs/wither/noai 1t
execute store result score @s enmity.math_f run data get entity @s Health 1
execute store result score @s enmity.math_e run data get entity @s Health 1
scoreboard players operation @s enmity.math_f += %const_1 enmity.value
execute if score %difficulty enmity.value matches 2 if score @s enmity.math_e matches ..300 store result entity @s Health float 1 run scoreboard players get @s enmity.math_f
execute if score %difficulty enmity.value matches 1 if score @s enmity.math_e matches ..250 store result entity @s Health float 1 run scoreboard players get @s enmity.math_f
playsound enmity:ambience.underground ambient @a[distance=..48] ~ ~ ~ 2 0 0
playsound ambient.soul_sand_valley.additions ambient @a[distance=..48] ~ ~ ~ 1 0 1