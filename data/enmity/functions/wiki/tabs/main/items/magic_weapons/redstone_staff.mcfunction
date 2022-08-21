tellraw @s [{"text":"-=============[","color":"gray"},{"text":"REDSTONE STAFF","color":"white","bold":true},{"text":"]============-","color":"gray"}]

tellraw @s [{"text":"Description:\n   Damage: 6\n   Mana usage: 100\n   Cooldown: 20\n   Shoots a redstone bolt.","color":"gray"}]
tellraw @s [{"text":"\nPrimary obtaining method:\n   Crafting:\n      [-][-][0]\n      [-][1][-]\n      [0][-][-]\n      0 - Redstone Dust\n      1 - Gold Ingot","color":"gray"}]

tellraw @s [{"text":"-==============[","color":"gray"},{"text":" ◀ ","color":"white","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Back"}},"clickEvent":{"action":"run_command","value":"/trigger enmity.wiki set 111"}},{"text":"]=====[","color":"gray"},{"text":" ⌂ ","color":"white","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Home"}},"clickEvent":{"action":"run_command","value":"/trigger enmity.wiki"}},{"text":"]==============-","color":"gray"}]