tellraw @s [{"text":"-===============[","color":"gray"},{"text":"DEATH MODE","color":"white","bold":true},{"text":"]==============-","color":"gray"}]

tellraw @s [{"text":"Death mode features the same difficulty and changes as expert mode, furthermore:","color":"gray"}]
tellraw @s [{"text":"   - Normal health regeneration from eating food is disabled;","color":"gray"}]
tellraw @s [{"text":"   - Players regenerate health very slowly only while their food level is full. When regenerating, players deplete their food level faster. No regeneration occurs if a player is sprinting;","color":"gray"}]
tellraw @s [{"text":"   - The effectiveness of health-regenerating accessories is greatly reduced;","color":"gray"}]
tellraw @s [{"text":"   - Players' taken magic damage multipler is fixed at 110% and unaffected by magic damage reduction;","color":"gray"}]
tellraw @s [{"text":"   - Mobs are much more likely to have armor, weapons, and enchantments.","color":"gray"}]

tellraw @s [{"text":"-==============[","color":"gray"},{"text":" ◀ ","color":"white","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Back"}},"clickEvent":{"action":"run_command","value":"/trigger enmity.guide set 13"}},{"text":"]=====[","color":"gray"},{"text":" ⌂ ","color":"white","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Home"}},"clickEvent":{"action":"run_command","value":"/trigger enmity.guide"}},{"text":"]==============-","color":"gray"}]