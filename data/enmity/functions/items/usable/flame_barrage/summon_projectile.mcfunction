playsound entity.blaze.shoot neutral @a[distance=0..] ~ ~ ~ 0.2 2 0.0
playsound entity.blaze.shoot neutral @a[distance=0..] ~ ~ ~ 0.2 1.8 0.0
playsound entity.blaze.shoot neutral @a[distance=0..] ~ ~ ~ 0.2 1.4 0.0
playsound entity.blaze.shoot neutral @a[distance=0..] ~ ~ ~ 0.3 1.2 0.0
execute at @s anchored eyes positioned ^ ^ ^-0.2 run summon minecraft:item ~ ~ ~ {Invulnerable:1,Age:-32768,PickupDelay:999,Item:{id:"minecraft:firework_star",Count:1,tag:{Enmity.DeleteItem:1,CustomModelData:3,display:{Name:'{"text":"Flame","italic":false}',Lore:['[{"text":"Just a little unlooked-for flame...","color":"gray","italic":false}]']}}},NoGravity:1,Tags:["enmity.new","enmity.flame_barrage","enmity.projectile","enmity.no_motion"]}
scoreboard players operation @e[type=marker,tag=enmity.new] enmity.player_id = @s enmity.player_id
tag @e[type=marker,tag=enmity.new] remove enmity.new
scoreboard players set @e[type=item,tag=enmity.new] enmity.dmg 2
scoreboard players operation @e[type=item,tag=enmity.new] enmity.dmg += @s enmity.dmg_bst
scoreboard players operation @e[type=item,tag=enmity.new] enmity.player_id = @s enmity.player_id
tag @e[type=item,tag=enmity.new] remove enmity.new