tellraw @s [{"text":"-==========[","color":"gray"},{"text":"ENCHANTMENT CHANGES","color":"white","bold":true},{"text":"]=========-","color":"gray"}]

tellraw @s [{"text":"Mending (if applied to an item with no durability - a regular weapon, magic weapon, or armor piece):\n   Picking up experience orbs has a chance to heal the player 1 health. This effect synergizes very well with the [","color":"gray"},{"text":"Ring of Devotion","color":"white","hoverEvent":{"action":"show_text","value":{"text":"Ring of Devotion"}},"clickEvent":{"action":"run_command","value":"/trigger enmity.wiki set 112057"}},{"text":"]. The chance of healing when picking up experience is 10% per worn piece of armor and 20% for holding a weapon, enchanted with Mending. If a heal succeeds, 5 experience points are consumed.","color":"gray"}]
tellraw @s [{"text":"\nUnbreaking (in addition to its normal functionality):\n   Extends the time for which the item can lay on ground before despawning (additional 5 minutes per 1 level of Unbreaking).","color":"gray"}]

tellraw @s [{"text":"-==============[","color":"gray"},{"text":" ◀ ","color":"white","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Back"}},"clickEvent":{"action":"run_command","value":"/trigger enmity.wiki set 13"}},{"text":"]=====[","color":"gray"},{"text":" ⌂ ","color":"white","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Home"}},"clickEvent":{"action":"run_command","value":"/trigger enmity.wiki"}},{"text":"]==============-","color":"gray"}]