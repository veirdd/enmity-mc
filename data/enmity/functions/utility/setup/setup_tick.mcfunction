time set 0
scoreboard players set @a enmity.age 0
execute if predicate enmity:environment/is_raining run weather clear
difficulty peaceful
gamerule sendCommandFeedback false
effect give @a weakness 2 255 true
effect give @a invisibility 2 0 true
effect give @a saturation 2 0 true
tag @a[scores={enmity.left=1..}] remove enmity.setup
tp @a @e[type=marker,tag=enmity.setup,limit=1]
execute at @e[type=marker,tag=enmity.setup,limit=1] positioned ~-0.5 ~ ~-0.5 run fill ~ ~ ~ ~1 ~2 ~1 air replace
execute if score %difficulty enmity.value matches 0 unless entity @a[tag=enmity.setup] as @r run function enmity:utility/setup/enable_setup
execute as @a[tag=enmity.setup,scores={enmity.setup=1..}] run function enmity:utility/setup/end_setup