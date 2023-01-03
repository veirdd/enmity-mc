# Items

execute as @a[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{Enmity:1,CustomModelData:97}}}] at @s run function enmity:items/other/calculator/2_tick
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{Enmity:1,CustomModelData:97}}]}] at @s run function enmity:items/other/calculator/2_tick_offhand
execute as @a[nbt={SelectedItem:{id:"minecraft:compass"}}] at @s run function enmity:items/other/compass/2_tick
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:compass"}]}] at @s run function enmity:items/other/compass/2_tick

# Entities

execute at @e[type=item,tag=!enmity.projectile,tag=!enmity.eternal,scores={enmity.age=270..}] run particle dust 1 0 0 0.5 ~ ~0.7 ~ 0 0 0 0 2

# Stats

scoreboard players set @a[gamemode=!survival,gamemode=!adventure] enmity.mana 9999
execute as @a[gamemode=!creative,gamemode=!spectator,scores={enmity.mana=4999..}] run scoreboard players operation @s enmity.mana = @s enmity.max_mana
scoreboard players set @a[gamemode=!creative,gamemode=!spectator] enmity.mana_regen 2
execute as @a[gamemode=!creative,gamemode=!spectator,tag=enmity.accessories.any.mana] run function enmity:misc/item_branch/2_tick/mana
execute as @a run function enmity:misc/projectiles/sentries/sentry_stats/calculate
scoreboard players operation @a[gamemode=!creative,gamemode=!spectator,scores={enmity.cooldown=1..}] enmity.mana_regen /= %const_2 enmity.value
execute as @a[gamemode=!creative,gamemode=!spectator] run scoreboard players operation @s enmity.mana += @s enmity.mana_regen
execute as @a[gamemode=!creative,gamemode=!spectator] if score @s enmity.mana > @s enmity.max_mana run scoreboard players operation @s enmity.mana = @s enmity.max_mana
execute as @a run function enmity:misc/mana_display/check_type
execute as @a if score @s[tag=!enmity.mana_sound_played] enmity.mana = @s enmity.max_mana at @s run playsound block.note_block.bell master @s ~ ~ ~ 1 2 0
execute as @a if score @s enmity.mana = @s enmity.max_mana run tag @s add enmity.mana_sound_played
execute as @a if score @s enmity.mana < @s enmity.max_mana run tag @s remove enmity.mana_sound_played
scoreboard players set @a[scores={enmity.mana=..-1}] enmity.mana 0

# Other

execute at @e[type=item_frame,tag=enmity.heating_coil] run particle dust 1 0.5 0 0.6 ~ ~0.5 ~ 0.3 0.1 0.3 0 5
execute at @e[type=item_frame,tag=enmity.cooling_coil] run particle dust 0 0.8 1 0.6 ~ ~0.5 ~ 0.3 0.1 0.3 0 5


schedule function enmity:2_tick 2t