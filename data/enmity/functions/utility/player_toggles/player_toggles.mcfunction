execute unless score @s enmity.player_targeting matches -1.. run scoreboard players set @s enmity.player_targeting 1
execute if score @s enmity.player_targeting matches 0 at @s run function enmity:utility/player_toggles/enable_player_homing
execute if score @s enmity.player_targeting matches 2 at @s run function enmity:utility/player_toggles/disable_player_homing

execute unless score @s enmity.mana_display matches -1.. run scoreboard players set @s enmity.mana_display 1
execute if score @s enmity.mana_display matches 0 at @s run function enmity:utility/player_toggles/visual_mana_display
execute if score @s enmity.mana_display matches 2 at @s run function enmity:utility/player_toggles/digital_mana_display