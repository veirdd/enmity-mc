tellraw @s [{"text":"-==================[","color":"gray"},{"text":"MANA","color":"white","bold":true},{"text":"]=================-","color":"gray"}]

tellraw @s [{"text":"Mana is the resource used by magic weapons and tools. By default, a player has a maximum of 200 mana and a mana regeneration rate of 20/s. These stats can be boosted using various equipment or by other means. Mana regneration rate is halved when a player is on a cooldown (from using a magic item). Regeneration can be increased by 10/s if the player is sneaking and not on a cooldown.","color":"gray"}]

tellraw @s [{"text":"-==============[","color":"gray"},{"text":" ◀ ","color":"white","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Back"}},"clickEvent":{"action":"run_command","value":"/trigger enmity.guide set 13"}},{"text":"]=====[","color":"gray"},{"text":" ⌂ ","color":"white","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Home"}},"clickEvent":{"action":"run_command","value":"/trigger enmity.guide"}},{"text":"]==============-","color":"gray"}]