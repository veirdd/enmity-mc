tellraw @a {"text":"The Giant has been defeated.","color":"gray"}
scoreboard players set %giant_defeated enmity.value 1
bossbar set enmity.giant players
kill @s