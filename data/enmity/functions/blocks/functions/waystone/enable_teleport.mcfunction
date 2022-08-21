scoreboard players operation @s enmity.math_a = @s enmity.xp
execute if entity @s[gamemode=creative] run scoreboard players set @s enmity.math_a 69
execute unless score @s enmity.math_a matches 27.. run tellraw @s [{"text":"Waystone: ","color":"light_purple"},{"text":"You need at least 3 experience levels to travel.","color":"gray"}]
execute unless score @s enmity.math_a matches 27.. run scoreboard players set @s enmity.waystone -40
execute if score @s enmity.math_a matches 27.. run tellraw @s [{"text":"Waystone: ","color":"light_purple"},{"text":"Teleportation active. Click [","color":"gray"},{"text":"here","color":"white","hoverEvent":{"action":"show_text","value":"Click"},"clickEvent":{"action":"suggest_command","value":"/trigger enmity.waystone_tp set "}},{"text":"] and enter the waystone number to travel to.","color":"gray"}]
execute if score @s enmity.math_a matches 27.. run scoreboard players enable @s enmity.waystone_tp
execute if score @s enmity.math_a matches 27.. run tag @s add enmity.teleport_enabled
execute if score @s enmity.math_a matches 27.. run xp add @s[gamemode=!creative] -27 points