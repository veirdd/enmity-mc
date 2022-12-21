scoreboard players set @s enmity.math_a 0
execute if entity @s[tag=!enmity.encountered.end_wither_skeleton] if entity @e[type=wither_skeleton,tag=enmity.end_wither_skeleton,distance=..16] store result score @s enmity.math_a run tag @s add enmity.encountered.end_wither_skeleton
execute if score @s enmity.math_a matches 0 if entity @s[tag=!enmity.encountered.flame_spewer] if entity @e[type=magma_cube,tag=enmity.flame_spewer,distance=..16] store result score @s enmity.math_a run tag @s add enmity.encountered.flame_spewer
execute if score @s enmity.math_a matches 0 if entity @s[tag=!enmity.encountered.harpy] if entity @e[type=phantom,tag=enmity.harpy,distance=..16] store result score @s enmity.math_a run tag @s add enmity.encountered.harpy
execute if score @s enmity.math_a matches 0 if entity @s[tag=!enmity.encountered.hellbat] if entity @e[type=bat,tag=enmity.hellbat,distance=..16] store result score @s enmity.math_a run tag @s add enmity.encountered.hellbat
execute if score @s enmity.math_a matches 0 if entity @s[tag=!enmity.encountered.illusioner] if entity @e[type=illusioner,distance=..16] store result score @s enmity.math_a run tag @s add enmity.encountered.illusioner
execute if score @s enmity.math_a matches 0 if entity @s[tag=!enmity.encountered.sculker] if entity @e[type=shulker,distance=..16] store result score @s enmity.math_a run tag @s add enmity.encountered.sculker
execute if score @s enmity.math_a matches 0 if entity @s[tag=!enmity.encountered.smiler] if entity @e[type=zombie,tag=enmity.smiler,distance=..16] store result score @s enmity.math_a run tag @s add enmity.encountered.smiler
execute if score @s enmity.math_a matches 0 if entity @s[tag=!enmity.encountered.wraith] if entity @e[type=skeleton,tag=enmity.wraith,distance=..16] store result score @s enmity.math_a run tag @s add enmity.encountered.wraith
execute if score @s enmity.math_a matches 0 if entity @s[tag=!enmity.encountered.nimbus] if entity @e[type=zombie,tag=enmity.nimbus,distance=..16] store result score @s enmity.math_a run tag @s add enmity.encountered.nimbus
execute if score @s enmity.math_a matches 0 if entity @s[tag=!enmity.encountered.crimson_visage] if entity @e[type=zombie,tag=enmity.visage,tag=enmity.crimson,distance=..16] store result score @s enmity.math_a run tag @s add enmity.encountered.crimson_visage
execute if score @s enmity.math_a matches 0 if entity @s[tag=!enmity.encountered.warped_visage] if entity @e[type=zombie,tag=enmity.visage,tag=enmity.warped,distance=..16] store result score @s enmity.math_a run tag @s add enmity.encountered.warped_visage
execute if score @s enmity.math_a matches 1 run tellraw @s [{"text":"You have unlocked a new entity entry in the guide.","color":"gray"}]