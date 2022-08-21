execute if predicate enmity:entity/has_armor/bone_set run scoreboard players add @s enmity.dmg_bst 1
execute if predicate enmity:entity/has_armor/molten_set run scoreboard players add @s enmity.dmg_bst 1
execute if predicate enmity:entity/has_armor/molten_set run scoreboard players add @s enmity.dmg_rdc 2
execute if predicate enmity:entity/has_armor/witherbone_set run scoreboard players add @s enmity.dmg_bst 2
execute if predicate enmity:entity/has_armor/witherbone_set run scoreboard players add @s enmity.dmg_rdc 1
execute if predicate enmity:entity/has_armor/silvan_set run scoreboard players add @s enmity.dmg_rdc 1
execute if predicate enmity:entity/has_armor/silvan_set run scoreboard players add @s enmity.max_snt 1
execute if predicate enmity:entity/has_armor/crystalline_set run function enmity:items/armor/crystalline/stats
execute if predicate enmity:entity/has_armor/tidal_set run function enmity:items/armor/tidal/stats
execute if predicate enmity:entity/has_armor/amethyst_set run scoreboard players add @s enmity.dmg_bst 1
execute if predicate enmity:entity/has_armor/amethyst_set run scoreboard players add @s enmity.dmg_rdc 1
execute if predicate enmity:entity/has_armor/celestial_set run function enmity:items/armor/celestial/stats
execute if predicate enmity:entity/has_armor/hadal_set run scoreboard players add @s enmity.dmg_bst 1
execute if predicate enmity:entity/has_armor/hadal_set run scoreboard players add @s enmity.dmg_rdc 1