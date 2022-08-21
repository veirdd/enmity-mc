tellraw @s [{"text":"-================[","color":"gray"},{"text":"SCULKER","color":"white","bold":true},{"text":"]================-","color":"gray"}]

tellraw @s [{"text":"The Sculker is a replacment for the Shulker, and an enemy native to the Deep Dark that makes exploration of this biome slightly harder.","color":"gray"}]
tellraw @s [{"text":"\nBehaviour:\n   Remains idle until it has detected vibrations from the player. Upon sensing the player, it inflicts Darkness onto them and from then behaves similarly to a Shulker.","color":"gray"}]
tellraw @s [{"text":"\nSpawning:\n   Spawns in the Deep Dark only on sculk blocks.","color":"gray"}]
tellraw @s [{"text":"\nDrops:\n   Sculker Shell (50% chance)","color":"gray"}]

tellraw @s [{"text":"-==============[","color":"gray"},{"text":" ◀ ","color":"white","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Back"}},"clickEvent":{"action":"run_command","value":"/trigger enmity.wiki set 12"}},{"text":"]=====[","color":"gray"},{"text":" ⌂ ","color":"white","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Home"}},"clickEvent":{"action":"run_command","value":"/trigger enmity.wiki"}},{"text":"]==============-","color":"gray"}]