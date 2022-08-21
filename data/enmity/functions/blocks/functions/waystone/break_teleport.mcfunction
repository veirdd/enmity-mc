stopsound @s block block.portal.trigger
execute if score @s enmity.waystone matches 10.. run playsound block.redstone_torch.burnout block @s ~ ~ ~ 2 0.8 0
scoreboard players set @s enmity.waystone 0
scoreboard players reset @s enmity.waystone_tp
tag @s remove enmity.teleport_enabled