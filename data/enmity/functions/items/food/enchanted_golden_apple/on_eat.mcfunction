execute unless score @s enmity.egapple_cooldown matches 0.. run scoreboard players set @s enmity.egapple_cooldown 0
execute if score @s enmity.egapple_cooldown matches 0 run effect give @s regeneration 5 255
execute if score @s enmity.egapple_cooldown matches 0 run effect give @s saturation 1 255 true
execute unless score @s[gamemode=!creative] enmity.egapple_cooldown matches 0 run kill @s
execute unless score @s[gamemode=!creative] enmity.egapple_cooldown matches 0 run tellraw @s {"text":"Your greed for immortality has killed you.","color":"gray"}
scoreboard players set @s[gamemode=!creative] enmity.egapple_cooldown 60
advancement revoke @s only enmity:eaten_food/enchanted_golden_apple