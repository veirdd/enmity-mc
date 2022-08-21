execute if entity @s[type=shulker] if predicate enmity:environment/in_the_end run kill @e[type=item_frame,distance=..3]
effect give @s invisibility 100 0 true
tp @s ~ -1000 ~
kill @s
execute unless entity @s[type=shulker] run summon illusioner ~ ~ ~ {ArmorItems:[{},{},{},{}],HandItems:[{id:"warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:1006}}],Tags:["enmity.fixed_illusioner"]}
execute if entity @s[type=shulker] run summon illusioner ~ ~ ~ {PersistenceRequired:1,ArmorItems:[{},{},{},{}],HandItems:[{id:"warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:1006}}],Tags:["enmity.fixed_illusioner"]}