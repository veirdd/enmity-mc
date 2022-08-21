tag @a remove enmity.wither_target
tag @r[gamemode=!spectator,distance=..64] add enmity.wither_target
tp @e[type=marker,tag=enmity.wither_anchor] @a[tag=enmity.wither_target,limit=1]
execute unless entity @a[gamemode=!spectator,distance=..64,scores={enmity.age=600..}] run function enmity:entities/mobs/wither/despawning/despawn_failed
function enmity:entities/mobs/wither/woosh