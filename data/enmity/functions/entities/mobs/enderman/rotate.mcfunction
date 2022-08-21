playsound entity.enderman.teleport neutral @s ~ ~ ~ 2 0.7 0
particle reverse_portal ~ ~1.5 ~ 0.3 0.3 0.3 0.5 30 force
tp @s ~ ~ ~ facing entity @e[type=enderman,tag=enmity.this,limit=1] feet
tp @s ~ ~ ~ facing ^ ^ ^-1