execute if score @s enmity.phase matches 4 run tag @s add enmity.adjust
execute if score @s enmity.phase matches 5 run tag @s remove enmity.invulnerable
execute if score @s enmity.phase matches 5 run data modify entity @s Invulnerable set value 0
scoreboard players add @s enmity.phase_ct 1
execute if score @s enmity.phase_ct matches 11 run scoreboard players set @s enmity.phase_ct 1
execute if score @s enmity.phase_ct matches 1 run scoreboard players set @s enmity.phase 1
execute if score @s enmity.phase_ct matches 2 run scoreboard players set @s enmity.phase 2
execute if score @s enmity.phase_ct matches 3 run scoreboard players set @s enmity.phase 3
execute if score @s enmity.phase_ct matches 4 run scoreboard players set @s enmity.phase 4
execute if score @s enmity.phase_ct matches 5 run scoreboard players set @s enmity.phase 5
execute if score @s enmity.phase_ct matches 6 run scoreboard players set @s enmity.phase 2
execute if score @s enmity.phase_ct matches 7 run scoreboard players set @s enmity.phase 1
execute if score @s enmity.phase_ct matches 8 run scoreboard players set @s enmity.phase 4
execute if score @s enmity.phase_ct matches 9 run scoreboard players set @s enmity.phase 3
execute if score @s enmity.phase_ct matches 10 run scoreboard players set @s enmity.phase 5
scoreboard players set @s enmity.age 0