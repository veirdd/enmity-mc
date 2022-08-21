tellraw @s [{"text":"-==============[","color":"gray"},{"text":"THERMOMETER","color":"white","bold":true},{"text":"]==============-","color":"gray"}]

tellraw @s [{"text":"The Thermometer displays the environmental temperature.","color":"gray"}]
tellraw @s [{"text":"\nPrimary obtaining method:\n   Crafting:\n      [-][0][-]\n      [0][1][0]\n      [-][0][-]\n      0 - Copper Ingot\n      1 - Redstone Dust","color":"gray"}]

tellraw @s [{"text":"-==============[","color":"gray"},{"text":" ◀ ","color":"white","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Back"}},"clickEvent":{"action":"run_command","value":"/trigger enmity.wiki set 113"}},{"text":"]=====[","color":"gray"},{"text":" ⌂ ","color":"white","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Home"}},"clickEvent":{"action":"run_command","value":"/trigger enmity.wiki"}},{"text":"]==============-","color":"gray"}]