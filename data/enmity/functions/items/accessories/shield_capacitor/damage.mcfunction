execute if score @s enmity.shield_capacitor matches 2400 run scoreboard players set @s enmity.taken_dmg 0
execute if entity @s[tag=enmity.accessories.shield_capacitor] if score @s enmity.shield_capacitor matches 2400 run playsound block.conduit.deactivate player @a[distance=0..] ~ ~1 ~ 1 2 0
execute if entity @s[tag=enmity.accessories.elemental_emblem,tag=!enmity.accessories.shield_capacitor] if score @s enmity.shield_capacitor matches 2400 run playsound block.ender_chest.open player @a[distance=0..] ~ ~1 ~ 2 1.5 0
scoreboard players set @s enmity.shield_capacitor 0