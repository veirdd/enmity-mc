execute store result score @s enmity.math_a run loot spawn ~ ~ ~ loot enmity:random_3
execute at @s anchored eyes positioned ^ ^-1 ^3 run summon minecraft:item ~ ~ ~ {Invulnerable:1,Age:-32768,PickupDelay:999,Item:{id:"minecraft:rotten_flesh",Count:1,tag:{Enmity.DeleteItem:1,display:{Name:'{"text":"Rotten Flesh","italic":false}',Lore:['[{"text":"Something is wrong with it...","color":"gray","italic":false}]']}}},Tags:["enmity.new","enmity.entrail_spewer","enmity.projectile","enmity.no_motion","enmity.giant"]}
execute at @s anchored eyes positioned ^ ^-1 ^3 run summon minecraft:item ~ ~ ~ {Invulnerable:1,Age:-32768,PickupDelay:999,Item:{id:"minecraft:rotten_flesh",Count:1,tag:{Enmity.DeleteItem:1,display:{Name:'{"text":"Rotten Flesh","italic":false}',Lore:['[{"text":"Something is wrong with it...","color":"gray","italic":false}]']}}},Tags:["enmity.new","enmity.entrail_spewer","enmity.projectile","enmity.no_motion","enmity.giant"]}
execute if score %difficulty enmity.value matches 1 run scoreboard players set @e[type=item,tag=enmity.new] enmity.dmg 4
execute if score %difficulty enmity.value matches 2 run scoreboard players set @e[type=item,tag=enmity.new] enmity.dmg 5
tag @e[type=item,tag=enmity.new] remove enmity.new
execute if score @s enmity.math_a matches 1 run playsound entity.player.burp neutral @a[distance=0..] ~ ~ ~ 2 0.5 0
execute if score @s enmity.math_a matches 2 run playsound entity.player.burp neutral @a[distance=0..] ~ ~ ~ 2 0.75 0
execute if score @s enmity.math_a matches 3 run playsound entity.player.burp neutral @a[distance=0..] ~ ~ ~ 2 1 0