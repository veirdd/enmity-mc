scoreboard players remove @s enmity.mana 60
scoreboard players add @s enmity.cooldown 12
playsound entity.creeper.death neutral @a[distance=0..] ~ ~ ~ 2 1.2 0
playsound entity.creeper.death neutral @a[distance=0..] ~ ~ ~ 2 1.4 0
execute at @s anchored eyes positioned ^ ^ ^-0.2 run summon minecraft:item ~ ~ ~ {Invulnerable:1,Age:-32768,PickupDelay:999,Item:{id:"minecraft:gunpowder",Count:1,tag:{Enmity.DeleteItem:1,display:{Name:'{"text":"Gunpowder Bomb","italic":false}',Lore:['[{"text":"Just a little unlooked-for bomb...","color":"gray","italic":false}]']}}},Tags:["enmity.new","enmity.gunpowder_bomb","enmity.projectile","enmity.no_motion"]}
scoreboard players set @e[type=item,tag=enmity.new] enmity.dmg 7
scoreboard players operation @e[type=item,tag=enmity.new] enmity.dmg += @s enmity.dmg_bst
tp @e[type=item,tag=enmity.new] @s
execute at @s anchored eyes run tp @e[type=item,tag=enmity.new] ^ ^-0.3 ^0.2
scoreboard players operation @e[type=item,tag=enmity.new] enmity.player_id = @s enmity.player_id
tag @e[type=item,tag=enmity.new] remove enmity.new