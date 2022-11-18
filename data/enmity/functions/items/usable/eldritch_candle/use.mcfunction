item replace entity @s weapon.mainhand with air
tag @s add enmity.eldritch_candle_choosing_difficulty
scoreboard players set @s enmity.setup 0
function enmity:items/usable/eldritch_candle/text
playsound minecraft:entity.wither.ambient master @s ~ ~ ~ 1 2 0