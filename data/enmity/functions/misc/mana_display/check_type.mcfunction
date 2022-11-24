execute if score @s enmity.mana_display matches 1 if entity @s[gamemode=!creative,gamemode=!spectator] run function enmity:misc/mana_display/visual_check
execute if score @s enmity.mana_display matches -1 if entity @s[gamemode=!creative,gamemode=!spectator] run function enmity:misc/mana_display/digital
execute if entity @s[gamemode=!adventure,gamemode=!survival] run title @s actionbar ""