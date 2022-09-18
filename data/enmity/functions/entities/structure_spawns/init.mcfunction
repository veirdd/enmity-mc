execute if entity @s[tag=enmity.ship-pillager] run summon pillager
execute if entity @s[tag=enmity.ship-vindicator] run summon vindicator
execute if entity @s[tag=enmity.waystone] positioned ~ ~-1 ~ run function enmity:cmd/setblock/waystone_generated
execute if entity @s[tag=enmity.tower_dungeon_spawner] run summon marker ~ ~-3 ~ {Tags:["enmity.tower_dungeon_spawner"]}
execute if entity @s[tag=enmity.moon_shrine] run function enmity:entities/structure_spawns/moon_shrine/spawn
kill @s