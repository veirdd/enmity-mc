setblock ~ ~ ~ spawner{MaxNearbyEntities:0,RequiredPlayerRange:0,SpawnData:{entity:{id:"minecraft:marker",Tags:["enmity.heating_coil"]}}}
scoreboard players set @s enmity.hp_dummy 2
data modify entity @s Item merge value {id:"minecraft:item_frame",Count:1,tag:{hold:{display:{Name:'{"text":"Heating Coil","italic":false}'}},EntityTag:{id:"minecraft:item_frame",Facing:1,Invulnerable:1,Invisible:1,Silent:1,Fixed:1,Tags:["enmity.block","enmity.block_unset","enmity.projectile","enmity.heating_coil"],Item:{id:"minecraft:stone_button",Count:1,tag:{CustomModelData:3}}}}}
playsound block.stone.place block @a[distance=0..] ~ ~ ~ 1 1.2 0