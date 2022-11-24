scoreboard players set @s enmity.mana_display -1
tellraw @s [{"text":"Mana display has been set to ","color":"gray"},{"text":"digital","color":"white"},{"text":".","color":"gray"}]
playsound block.note_block.hat master @s ~ ~ ~ 2 2 0
scoreboard players enable @s enmity.mana_display