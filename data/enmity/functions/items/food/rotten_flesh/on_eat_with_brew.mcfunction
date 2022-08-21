effect give @s saturation 1 1 true
tag @s add enmity.clear_hunger
execute at @s run playsound entity.player.breath player @a ~ ~ ~ 0.4 1 0
execute at @s anchored eyes run particle dust 0.5 0 1 0.5 ^ ^ ^0.4 0.2 0.2 0.2 0 15