particle minecraft:squid_ink ~ ~0.3 ~ 0.5 0.5 0.5 0 30 force
playsound block.end_portal.spawn block @a[distance=0..] ~ ~ ~ 2 0 0
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",tag:{Enmity:1,CustomModelData:26}}}]
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",tag:{Enmity:1,CustomModelData:37}}}]
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",tag:{Enmity:1,CustomModelData:39}}}]
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",tag:{Enmity:1,CustomModelData:40}}}]
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",tag:{Enmity:1,CustomModelData:75}}}]
kill @e[type=item,limit=1,distance=..0.5,nbt={Item:{id:"minecraft:dragon_egg",Count:1b}}]
kill @s
summon marker ~ ~ ~ {Tags:["enmity.projectile","enmity.delirium_crafting"]}