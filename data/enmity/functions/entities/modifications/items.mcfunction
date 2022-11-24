execute unless data entity @s Item run kill @s
execute if entity @s[nbt={Item:{id:"minecraft:firework_star",tag:{Enmity.Type:"death"}}}] at @s run function enmity:misc/on_entity_death
execute if entity @s[nbt={Item:{id:"minecraft:firework_star",tag:{Enmity.Type:"minion"}}}] at @s run function enmity:misc/boss_minion_death
execute if entity @s[nbt={Item:{id:"minecraft:firework_star",tag:{Enmity.Type:"hellbat"}}}] at @s run function enmity:entities/mobs/hellbat/on_death
execute if entity @s[nbt={Item:{id:"minecraft:firework_star",tag:{Enmity.Type:"giant"}}}] at @s run function enmity:entities/mobs/giant/on_death
execute if entity @s[nbt={Item:{id:"minecraft:firework_star",tag:{Enmity.Type:"wraith"}}}] at @s run function enmity:entities/mobs/wraith/on_death
execute if entity @s[nbt={Item:{id:"minecraft:firework_star",tag:{Enmity.Type:"wither"}}}] at @s run function enmity:entities/mobs/wither/on_death
execute if entity @s[nbt={Item:{id:"minecraft:firework_star",tag:{Enmity.Type:"guardian"}}}] at @s run function enmity:entities/mobs/guardian/on_death
execute if entity @s[nbt={Item:{id:"minecraft:firework_star",tag:{Enmity.Type:"elder_guardian"}}}] at @s run function enmity:entities/mobs/elder_guardian/on_death
execute if entity @s[nbt={Item:{id:"minecraft:firework_star",tag:{Enmity.Type:"harpy"}}}] at @s run function enmity:entities/mobs/harpy/on_death
execute if entity @s[nbt={Item:{id:"minecraft:firework_star",tag:{Enmity.Type:"flame_spewer"}}}] at @s run function enmity:entities/mobs/flame_spewer/on_death
execute if entity @s[nbt={Item:{id:"minecraft:firework_star",tag:{Enmity.Type:"nimbus"}}}] at @s run function enmity:entities/mobs/nimbus/on_death
execute if entity @s[nbt={Item:{id:"minecraft:firework_star",tag:{Enmity.Type:"smiler"}}}] at @s positioned ~ ~1.6 ~ facing entity @p[gamemode=!spectator] eyes run function enmity:entities/mobs/smiler/on_death
execute if entity @s[nbt={Item:{id:"minecraft:firework_star",tag:{Enmity.Type:"crop_xp"}}}] at @s run function enmity:misc/crop_xp
execute if entity @s[nbt={Item:{id:"minecraft:elytra"}}] unless entity @s[nbt={Item:{tag:{Enmity:1}}}] run kill @s
execute if entity @s[nbt={Item:{tag:{Enmity.CustomBlock:1}}}] run kill @s
execute unless entity @s[nbt={Age:0s}] run tag @s add enmity.modified