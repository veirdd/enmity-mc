tellraw @s [{"text":"-==============[","color":"gray"},{"text":"GOLDEN APPLE","color":"white","bold":true},{"text":"]=============-","color":"gray"}]

tellraw @s [{"text":"A Golden Apple provides 5 hunger points instead of 4. It does not grant Absorption.","color":"gray"}]
tellraw @s [{"text":"\nPrimary obtaining method:\n   Crafting:\n      [0][0][0]\n      [0][1][0]\n      [0][0][0]\n      0 - Gold Nugget\n      1 - Apple","color":"gray"}]

tellraw @s [{"text":"-==============[","color":"gray"},{"text":" ◀ ","color":"white","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Back"}},"clickEvent":{"action":"run_command","value":"/trigger enmity.guide set 114"}},{"text":"]=====[","color":"gray"},{"text":" ⌂ ","color":"white","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Home"}},"clickEvent":{"action":"run_command","value":"/trigger enmity.guide"}},{"text":"]==============-","color":"gray"}]