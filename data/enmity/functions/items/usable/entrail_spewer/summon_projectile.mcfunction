execute store result score @s enmity.math_a run loot spawn ~ ~ ~ loot enmity:random_3
execute at @s anchored eyes positioned ^ ^ ^-0.2 run summon minecraft:item ~ ~ ~ {Invulnerable:1,Age:-32768,PickupDelay:999,Item:{id:"minecraft:rotten_flesh",Count:1,tag:{Enmity.DeleteItem:1,display:{Name:'{"text":"Rotten Flesh","italic":false}',Lore:['[{"text":"Something is wrong with it...","color":"gray","italic":false}]']}}},Tags:["enmity.new","enmity.entrail_spewer","enmity.projectile","enmity.no_motion"]}
scoreboard players operation @e[type=marker,tag=enmity.new] enmity.player_id = @s enmity.player_id
tag @e[type=marker,tag=enmity.new] remove enmity.new
scoreboard players set @e[type=item,tag=enmity.new] enmity.dmg 2
scoreboard players operation @e[type=item,tag=enmity.new] enmity.dmg += @s enmity.dmg_bst
scoreboard players operation @e[type=item,tag=enmity.new] enmity.player_id = @s enmity.player_id
tag @e[type=item,tag=enmity.new] remove enmity.new