execute at @e[type=end_crystal,tag=enmity.dragon_crystal] run summon creeper ~ ~ ~ {Fuse:0,Tags:["enmity.modified"]}
execute at @e[type=end_crystal,tag=enmity.dragon_crystal] run particle dragon_breath ~ ~1 ~ 0 0 0 1 150 force 
kill @e[type=end_crystal,tag=enmity.dragon_crystal]
tellraw @a {"text":"The Ender Dragon has been defeated.","color":"gray"}
scoreboard players set %ender_dragon_defeated enmity.value 1