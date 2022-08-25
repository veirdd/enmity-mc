tellraw @s [{"text":"Hello! You're playing ","color":"gray"},{"text":"Enmity v0.0.0","color":"white"},{"text":".\n\nMake sure to have properly installed the datapack, following the installation file.\n","color":"gray"}]
tellraw @s [{"text":"Use trigger commands to toggle some features. \nType","color":"gray"},{"text":" /trigger enmity.guide","color":"white","hoverEvent":{"action":"show_text","value":{"text":"Click to run"}},"clickEvent":{"action":"run_command","value":"/trigger enmity.guide"}},{"text":" to open an interactive guide.\n","color":"gray"}]
execute if score %difficulty enmity.value matches 1 run tellraw @s [{"text":"This world is in","color":"gray"},{"text":" normal","color":"green"},{"text":" mode. Have fun!\n","color":"gray"}]
execute if score %difficulty enmity.value matches 2 run tellraw @s [{"text":"This world is in","color":"gray"},{"text":" expert","color":"red"},{"text":" mode. Have fun!\n","color":"gray"}]
execute unless entity @s[tag=enmity.setup] if entity @a[tag=enmity.setup] if score %difficulty enmity.value matches 0 run tellraw @s [{"text":"Please wait; another player is choosing the world difficulty mode.","color":"gray"}]
scoreboard players set @s enmity.left 1
scoreboard players set @s enmity.death_mode_regen_cd 0
scoreboard players set @s enmity.amb_loop 0
scoreboard players set @s enmity.flight 0
scoreboard players set @s enmity.amb_loop 0
title @s times 0 20 10