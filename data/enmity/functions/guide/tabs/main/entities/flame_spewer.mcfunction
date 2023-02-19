tellraw @s [{"text":"-==============[","color":"gray"},{"text":"FLAME SPEWER","color":"white","bold":true},{"text":"]=============-","color":"gray"}]

tellraw @s [{"text":"The Flame Spewer is a hostile mob that inhabits pools of lava. It visually resembles an octopus.","color":"gray"}]
tellraw @s [{"text":"\nBehaviour:\n   While in lava, shoots at nearby players with special flare bolts that pour lava onto the target. If gotten onto land, jumps and attacks only with melee. Starts taking damage after being out of lava for 30 seconds.","color":"gray"}]
tellraw @s [{"text":"\nSpawning:\n   Spawns in the top of layer of bodies of lava. Needs adjacent lava and a 3x2x3 area of air above to spawn. Can spawn very close to the player.","color":"gray"}]
tellraw @s [{"text":"\nDrops:\n   Gunpowder (0-2)\n   Obsidian (10% chance, if killed in the Overworld)\n   Netherite Scrap (10% chance, if killed in the Nether, in pre-hardmode)\n   Netherite Scrap (25% chance, if killed in the Nether, in hardmode)","color":"gray"}]

tellraw @s [{"text":"-==============[","color":"gray"},{"text":" ◀ ","color":"white","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Back"}},"clickEvent":{"action":"run_command","value":"/trigger enmity.guide set 12"}},{"text":"]=====[","color":"gray"},{"text":" ⌂ ","color":"white","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Home"}},"clickEvent":{"action":"run_command","value":"/trigger enmity.guide"}},{"text":"]==============-","color":"gray"}]