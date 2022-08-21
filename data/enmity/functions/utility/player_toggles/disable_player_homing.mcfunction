scoreboard players set @s enmity.player_targeting -1
tellraw @s [{"text":"Weapons are now ","color":"gray"},{"text":"disabled","color":"green"},{"text":" from targeting other players.","color":"gray"}]
playsound block.note_block.hat master @s ~ ~ ~ 2 2 0
scoreboard players enable @s enmity.player_targeting