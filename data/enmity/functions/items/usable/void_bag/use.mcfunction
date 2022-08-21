scoreboard players set @s enmity.use_bundle 0
execute at @s anchored eyes positioned ^ ^ ^ positioned ~ ~-0.3 ~ run kill @e[type=item,distance=..0.01,nbt={Age:0s}]
playsound entity.player.breath neutral @s ~ ~ ~ 0.5 0 0