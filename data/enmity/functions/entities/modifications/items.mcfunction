execute if entity @s[nbt={Item:{id:"minecraft:firework_star",tag:{Enmity.Type:"hellbat"}}}] at @s run function enmity:entities/mobs/hellbat/on_death
execute if entity @s[nbt={Item:{id:"minecraft:firework_star",tag:{Enmity.Type:"giant"}}}] at @s run function enmity:entities/mobs/giant/on_death
execute if entity @s[nbt={Item:{id:"minecraft:firework_star",tag:{Enmity.Type:"wraith"}}}] at @s run function enmity:entities/mobs/wraith/on_death
execute if entity @s[nbt={Item:{id:"minecraft:firework_star",tag:{Enmity.Type:"wither"}}}] at @s run function enmity:entities/mobs/wither/on_death
execute if entity @s[nbt={Item:{id:"minecraft:firework_star",tag:{Enmity.Type:"guardian"}}}] at @s run function enmity:entities/mobs/guardian/on_death
execute if entity @s[nbt={Item:{id:"minecraft:firework_star",tag:{Enmity.Type:"elder_guardian"}}}] at @s run function enmity:entities/mobs/elder_guardian/on_death
execute if entity @s[nbt={Item:{id:"minecraft:firework_star",tag:{Enmity.Type:"death"}}}] at @s run function enmity:utility/on_entity_death
execute if entity @s[nbt={Item:{id:"minecraft:firework_star",tag:{Enmity.Type:"minion"}}}] at @s run function enmity:utility/boss_minion_death
execute if entity @s[nbt={Item:{id:"minecraft:firework_star",tag:{Enmity.Type:"harpy"}}}] at @s run function enmity:entities/mobs/harpy/on_death
execute if entity @s[nbt={Item:{id:"minecraft:elytra"}}] unless entity @s[nbt={Item:{tag:{Enmity:1}}}] run kill @s
execute if entity @s[nbt={Item:{tag:{Enmity.CustomBlock:1}}}] run kill @s