execute if score @s enmity.shield_capacitor matches 2400 run particle reverse_portal ~ ~1 ~ 0.1 0.1 0.1 1 1 force
execute if score @s enmity.shield_capacitor matches ..399 run particle dust 0.725 0.225 1 0.125 ~ ~1 ~ 0.05 0.05 0.05 0 2 force
execute if score @s enmity.shield_capacitor matches 400..799 run particle dust 0.725 0.225 1 0.15 ~ ~1 ~ 0.075 0.075 0.075 0 2 force
execute if score @s enmity.shield_capacitor matches 800..1199 run particle dust 0.725 0.225 1 0.175 ~ ~1 ~ 0.1 0.1 0.1 0 2 force
execute if score @s enmity.shield_capacitor matches 1200..1599 run particle dust 0.725 0.225 1 0.2 ~ ~1 ~ 0.133 0.133 0.133 0 2 force
execute if score @s enmity.shield_capacitor matches 1600..1999 run particle dust 0.725 0.225 1 0.225 ~ ~1 ~ 0.167 0.167 0.167 0 2 force
execute if score @s enmity.shield_capacitor matches 2000..2399 run particle dust 0.725 0.225 1 0.25 ~ ~1 ~ 0.2 0.2 0.2 0 2 force
execute if score @s enmity.shield_capacitor matches 2399 run playsound block.end_portal_frame.fill player @a[distance=0..] ~ ~1 ~ 2 1.7 0