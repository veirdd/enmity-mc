# Stats

scoreboard players set @a[gamemode=!survival,gamemode=!adventure] enmity.mana 9999
execute as @a[gamemode=!creative,gamemode=!spectator,scores={enmity.mana=4999..}] run scoreboard players operation @s enmity.mana = @s enmity.max_mana
scoreboard players set @a[gamemode=!creative,gamemode=!spectator] enmity.mana_regen 2
execute as @a[gamemode=!creative,gamemode=!spectator,nbt={Inventory:[{Slot:9b,id:"minecraft:warped_fungus_on_a_stick",tag:{Enmity:1}}]}] run function enmity:utility/item_branch/2_tick/mana_regen
execute as @a run function enmity:utility/projectiles/sentries/sentry_stats/calculate
scoreboard players operation @a[gamemode=!creative,gamemode=!spectator,scores={enmity.cooldown=1..}] enmity.mana_regen /= %const_2 enmity.value
execute as @a[gamemode=!creative,gamemode=!spectator] run scoreboard players operation @s enmity.mana += @s enmity.mana_regen
execute as @a[gamemode=!creative,gamemode=!spectator] if score @s enmity.mana > @s enmity.max_mana run scoreboard players operation @s enmity.mana = @s enmity.max_mana
execute as @a run function enmity:utility/mana_display/check_type
execute as @a if score @s[tag=!enmity.mana_sound_played] enmity.mana = @s enmity.max_mana at @s run playsound block.note_block.bell master @s ~ ~ ~ 1 2 0
execute as @a if score @s enmity.mana = @s enmity.max_mana run tag @s add enmity.mana_sound_played
execute as @a if score @s enmity.mana < @s enmity.max_mana run tag @s remove enmity.mana_sound_played
scoreboard players set @a[scores={enmity.mana=..-1}] enmity.mana 0


schedule function enmity:2_tick 2t