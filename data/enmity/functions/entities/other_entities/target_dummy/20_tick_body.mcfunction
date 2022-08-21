tag @s add enmity.this
execute if score @s enmity.math_f matches 1.. at @e[type=marker,tag=enmity.setup,limit=1] run setblock ~ -64 ~ oak_sign{Text1:'[{"text":"DPS: ","color":"gray"},{"score":{"name":"@e[type=zombie,tag=enmity.this,limit=1]","objective":"enmity.math_f"},"color":"white"}]'}
tag @s remove enmity.this
execute if score @s enmity.math_f matches 1.. run summon item ~ ~1.5 ~ {Invulnerable:1,NoGravity:1,Item:{id:"firework_star",Count:1b,tag:{Enmity.DeleteItem:1,CustomModelData:1001,display:{Name:'{"text":"Damage Indicator","italic":false}',Lore:['{"text":"Something went wrong...","italic":false,"color":"gray"}']}}},CustomNameVisible:1,Tags:["enmity.new","enmity.projectile","enmity.dummy_dps"],PickupDelay:9999,Age:5979}
execute if score @s enmity.math_f matches 1.. at @e[type=marker,tag=enmity.setup,limit=1] run data modify entity @e[type=item,tag=enmity.new,limit=1] CustomName set from block ~ -64 ~ Text1
tag @e[type=item,tag=enmity.new,limit=1] remove enmity.new
execute if score @s enmity.math_f matches 1.. at @e[type=marker,tag=enmity.setup,limit=1] run setblock ~ -64 ~ bedrock
scoreboard players set @s enmity.math_f 0