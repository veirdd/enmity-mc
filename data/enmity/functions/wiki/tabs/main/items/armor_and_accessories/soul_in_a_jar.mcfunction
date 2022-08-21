tellraw @s [{"text":"-==============[","color":"gray"},{"text":"SOUL IN A JAR","color":"white","bold":true},{"text":"]=============-","color":"gray"}]

tellraw @s [{"text":"Description:\n   Accessory type: effect\n   The little friend inside shoots homing souls at nearby enemies.","color":"gray"}]
tellraw @s [{"text":"\nPrimary obtaining method:\n   Dropped by Wraiths (3% chance).","color":"gray"}]

tellraw @s [{"text":"-==============[","color":"gray"},{"text":" ◀ ","color":"white","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Back"}},"clickEvent":{"action":"run_command","value":"/trigger enmity.wiki set 112"}},{"text":"]=====[","color":"gray"},{"text":" ⌂ ","color":"white","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Home"}},"clickEvent":{"action":"run_command","value":"/trigger enmity.wiki"}},{"text":"]==============-","color":"gray"}]