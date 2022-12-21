tellraw @s [{"text":"-=========[","color":"gray"},{"text":"CRIMSON/WARPED VISAGE","color":"white","bold":true},{"text":"]========-","color":"gray"}]

tellraw @s [{"text":"The Visage is a hostile mob that inhabits forests of the Nether. It shoots very dangerous but quite easily avoided wither skulls.","color":"gray"}]
tellraw @s [{"text":"\nBehaviour:\n   Floats above the player and uses wither skulls to damage them. It is difficult to attack without ranged weapons as it tries to avoid contact with the player.","color":"gray"}]
tellraw @s [{"text":"\nSpawning:\n   Spawns in crimson forests and warped forests.","color":"gray"}]
tellraw @s [{"text":"\nDrops:\n   Soul Essence (25% chance)\n   Wither Skeleton Skull (2% chance)","color":"gray"}]

tellraw @s [{"text":"-==============[","color":"gray"},{"text":" ◀ ","color":"white","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Back"}},"clickEvent":{"action":"run_command","value":"/trigger enmity.guide set 12"}},{"text":"]=====[","color":"gray"},{"text":" ⌂ ","color":"white","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Home"}},"clickEvent":{"action":"run_command","value":"/trigger enmity.guide"}},{"text":"]==============-","color":"gray"}]