setblock ~ ~ ~ spawner{MaxNearbyEntities:0,RequiredPlayerRange:0,SpawnData:{entity:{id:"minecraft:marker",Tags:["enmity.waystone"]}}}

summon area_effect_cloud ~ ~0.5 ~ {CustomNameVisible:1,Duration:999999999,Tags:["enmity.waystone_id"]}

scoreboard players set @s enmity.hp_dummy 2
data modify entity @s Item merge value {id:"minecraft:item_frame",Count:1,tag:{hold:{display:{Name:'{"text":"Waystone","italic":false}'}},EntityTag:{id:"minecraft:item_frame",Facing:1,Invulnerable:1,Invisible:1,Silent:1,Fixed:1,Tags:["enmity.block","enmity.block_unset","enmity.projectile","enmity.waystone"],Item:{id:"minecraft:stone_button",Count:1,tag:{CustomModelData:1}}}}}
playsound block.lodestone.place block @a[distance=0..] ~ ~ ~ 1 1.2 0