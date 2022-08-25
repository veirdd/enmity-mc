tellraw @s [{"text":"-================[","color":"gray"},{"text":"VOID BAG","color":"white","bold":true},{"text":"]================-","color":"gray"}]

tellraw @s [{"text":"The Void Bag is a special type of Bundle. It can be used like a regular Bundle with the exception that using it in hand will destroy the contained items instead of dropping them.","color":"gray"}]
tellraw @s [{"text":"\nDescription:\n   Use to destroy the items inside.","color":"gray"}]
tellraw @s [{"text":"\nPrimary obtaining method:\n   Crafting:\n      [-][0][-]\n      [0][1][0]\n      [-][0][-]\n      0 - Echo Shard\n      1 - Bundle","color":"gray"}]
tellraw @s [{"text":"\nNotes:\n   It can also be crafted using a Treasure Bag or even another Void Bag.","color":"gray"}]

tellraw @s [{"text":"-==============[","color":"gray"},{"text":" ◀ ","color":"white","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Back"}},"clickEvent":{"action":"run_command","value":"/trigger enmity.guide set 113"}},{"text":"]=====[","color":"gray"},{"text":" ⌂ ","color":"white","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Home"}},"clickEvent":{"action":"run_command","value":"/trigger enmity.guide"}},{"text":"]==============-","color":"gray"}]