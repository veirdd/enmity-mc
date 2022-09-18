execute if entity @s[tag=enmity.ship-pillager] run summon pillager
execute if entity @s[tag=enmity.ship-vindicator] run summon vindicator
execute if entity @s[tag=enmity.waystone] positioned ~ ~-1 ~ run function enmity:cmd/setblock/waystone_generated
execute if entity @s[tag=enmity.tower_dungeon_spawner] run summon marker ~ ~-3 ~ {Tags:["enmity.tower_dungeon_spawner"]}
execute if entity @s[tag=enmity.moon_shrine] run summon item ~ ~0.5 ~ {Item:{id:"warped_fungus_on_a_stick",Count:1,tag:{display:{Name:'{"text":"Pocket Moon","italic":false}',Lore:['[{"text":"Accessory type: ","italic":false,"color":"gray"},{"text":"effect","color":"white"}]','[{"text":"Grants immunity to knockback.","italic":false,"color":"gray"}]']},Unbreakable:1,HideFlags:4,CustomModelData:100,Enmity:1}},Tags:["enmity.moon_shrine"],NoGravity:1,Age:-32768}
execute if entity @s[tag=enmity.moon_shrine] run fill ~1 ~-2 ~1 ~-1 ~-2 ~-1 calcite
kill @s