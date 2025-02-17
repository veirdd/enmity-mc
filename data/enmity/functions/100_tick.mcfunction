# Items

execute as @a if entity @s[tag=enmity.accessories.any.strength] run function enmity:misc/item_branch/100_tick/strength
execute as @a if entity @s[tag=enmity.accessories.any.effect] run function enmity:misc/item_branch/100_tick/effect
execute as @a[gamemode=!spectator,predicate=enmity:entity/has_armor/hadal_set] at @s run particle shriek 0 ~ ~-0.2 ~ 0 0 0 0 1

# Entities

execute as @e[type=item,nbt={Item:{id:"minecraft:firework_star",Count:1b,tag:{Enmity:1,CustomModelData:10}}}] at @s run function enmity:entities/other_entities/items/elder_guardian_scale/100_tick
execute as @e[type=iron_golem] at @s if entity @e[type=villager,distance=..8] run effect give @s regeneration 5 0
execute as @e[type=marker,tag=enmity.tower_dungeon_spawner] at @s if entity @p[distance=..10,gamemode=!spectator] run function enmity:entities/other_entities/tower_dungeon/spawner/100_tick

# Death Mode

execute if score %death_mode enmity.value matches 1 as @a unless predicate enmity:entity/is_sprinting if score @s enmity.death_mode_regen_cd matches 1.. run scoreboard players remove @s enmity.death_mode_regen_cd 1
execute if score %death_mode enmity.value matches 1 as @a[tag=!enmity.give_instant_health,tag=!enmity.update_health] if score @s enmity.death_mode_regen_cd matches 0 if score @s enmity.food matches 20 if score @s enmity.health < @s enmity.max_hp run function enmity:misc/health_modification/increase_health_by_1
execute if score %death_mode enmity.value matches 1 as @a if score @s enmity.food matches 20 if score @s enmity.health < @s enmity.max_hp run effect give @s hunger 1 20 true
execute if score %death_mode enmity.value matches 1 as @a if score @s enmity.death_mode_regen_cd matches 0 if score @s enmity.food matches 20 if score @s enmity.health < @s enmity.max_hp run scoreboard players set @s enmity.death_mode_regen_cd 3

# Environment

execute as @a at @s if predicate enmity:environment/near_lit_campfire run effect give @s regeneration 3 0 true

# Other

scoreboard players enable @a enmity.guide
scoreboard players enable @a enmity.player_targeting
scoreboard players enable @a enmity.mana_display
scoreboard players enable @a enmity.remove_sentries


schedule function enmity:100_tick 100t