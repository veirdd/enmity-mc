effect clear @a weakness
effect clear @a invisibility
effect clear @a saturation
gamerule sendCommandFeedback true
execute if score @s enmity.setup matches 1 run scoreboard players set %difficulty enmity.value 1
execute if score @s enmity.setup matches 1 run tellraw @s [{"text":"The world difficulty has been set to","color":"gray"},{"text":" normal","color":"green"},{"text":". Have fun!","color":"gray"}]
execute if score @s enmity.setup matches 2.. run scoreboard players set %difficulty enmity.value 2
execute if score @s enmity.setup matches 2 run tellraw @s [{"text":"The world difficulty has been set to","color":"gray"},{"text":" expert","color":"red"},{"text":". Have fun!","color":"gray"}]
execute if score @s enmity.setup matches 3 run scoreboard players set %death_mode enmity.value 1
execute if score @s enmity.setup matches 3 run tellraw @s [{"text":"The world difficulty has been set to","color":"gray"},{"text":" death","color":"dark_purple"},{"text":". Enjoy your suffering!","color":"gray"}]
playsound block.note_block.hat master @s ~ ~ ~ 2 2 0
tag @s remove enmity.setup
function enmity:cmd/give/eldritch_candle
execute if score @s enmity.setup matches 1 run playsound block.beacon.power_select neutral @s[distance=0..] ~ ~ ~ 2 0.8 0
execute if score @s enmity.setup matches 1 run playsound block.beacon.power_select neutral @s[distance=0..] ~ ~ ~ 2 1.2 0
execute if score @s enmity.setup matches 1 run playsound block.beacon.power_select neutral @s[distance=0..] ~ ~ ~ 2 1.6 0
execute if score @s enmity.setup matches 2 run playsound block.beacon.power_select neutral @s[distance=0..] ~ ~ ~ 2 0.8 0
execute if score @s enmity.setup matches 2 run playsound block.beacon.power_select neutral @s[distance=0..] ~ ~ ~ 2 0.7 0
execute if score @s enmity.setup matches 2 run playsound block.beacon.power_select neutral @s[distance=0..] ~ ~ ~ 2 0.5 0
execute if score @s enmity.setup matches 3 run playsound block.beacon.power_select neutral @s[distance=0..] ~ ~ ~ 2 0 0
execute if score @s enmity.setup matches 3 run playsound block.beacon.power_select neutral @s[distance=0..] ~ ~ ~ 2 0.3 0
execute if score @s enmity.setup matches 3 run playsound block.beacon.power_select neutral @s[distance=0..] ~ ~ ~ 2 0.6 0
scoreboard players set @s enmity.setup 0