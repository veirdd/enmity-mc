scoreboard players remove @s enmity.mana 40
scoreboard players add @s enmity.cooldown 8
playsound block.beacon.deactivate neutral @a[distance=0..] ~ ~ ~ 2 2 0
playsound entity.zombie.attack_iron_door neutral @a[distance=0..] ~ ~ ~ 1.5 2 0
playsound entity.zombie.break_wooden_door neutral @a[distance=0..] ~ ~ ~ 1.5 1.5 0
summon minecraft:marker ~ ~ ~ {Tags:["enmity.new","enmity.pistol_bullet","enmity.projectile"]}
scoreboard players set @e[type=marker,tag=enmity.pistol_bullet,tag=enmity.new] enmity.dmg 6
scoreboard players operation @e[type=marker,tag=enmity.new] enmity.dmg += @s enmity.dmg_bst
tp @e[type=marker,tag=enmity.new] @s
execute at @s anchored eyes run tp @e[type=marker,tag=enmity.new] ^ ^ ^0.2
scoreboard players operation @e[type=marker,tag=enmity.new] enmity.player_id = @s enmity.player_id
tag @e[type=marker,tag=enmity.pistol_bullet,tag=enmity.new] remove enmity.new