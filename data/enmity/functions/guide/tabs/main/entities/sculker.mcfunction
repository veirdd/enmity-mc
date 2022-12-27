tellraw @s [{"text":"-================[","color":"gray"},{"text":"SCULKER","color":"white","bold":true},{"text":"]================-","color":"gray"}]

tellraw @s [{"text":"The Sculker is a replacment for the Shulker, and a hostile mob native to the Deep Dark that makes the exploration of this biome significantly harder.","color":"gray"}]
tellraw @s [{"text":"\nBehaviour:\n   Remains idle until a nearby sculk sensor alerts it or it is attacked by the player. Inflicts Blindness onto the player with highly damaging homing projectiles.","color":"gray"}]
tellraw @s [{"text":"\nSpawning:\n   Spawns in the Deep Dark only on sculk blocks.","color":"gray"}]
tellraw @s [{"text":"\nDrops:\n   Sculker Shell (50% chance)","color":"gray"}]

tellraw @s [{"text":"-==============[","color":"gray"},{"text":" ◀ ","color":"white","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Back"}},"clickEvent":{"action":"run_command","value":"/trigger enmity.guide set 12"}},{"text":"]=====[","color":"gray"},{"text":" ⌂ ","color":"white","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Home"}},"clickEvent":{"action":"run_command","value":"/trigger enmity.guide"}},{"text":"]==============-","color":"gray"}]