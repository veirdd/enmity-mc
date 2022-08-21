tellraw @s [{"text":"-============[","color":"gray"},{"text":"REPELLING STONE","color":"white","bold":true},{"text":"]============-","color":"gray"}]

tellraw @s [{"text":"Description:\n   Accessory type: effect\n   Repels nearby arrows, including yours.","color":"gray"}]
tellraw @s [{"text":"\nPrimary obtaining method:\n   Dropped by Skeletons and Strays (0.5% chance).","color":"gray"}]
tellraw @s [{"text":"\nNotes:\n   Repelling your own arrows increases their damage with additional velocity.","color":"gray"}]

tellraw @s [{"text":"-==============[","color":"gray"},{"text":" ◀ ","color":"white","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Back"}},"clickEvent":{"action":"run_command","value":"/trigger enmity.wiki set 112"}},{"text":"]=====[","color":"gray"},{"text":" ⌂ ","color":"white","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Home"}},"clickEvent":{"action":"run_command","value":"/trigger enmity.wiki"}},{"text":"]==============-","color":"gray"}]