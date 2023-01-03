execute if entity @s[tag=enmity.accessories.inventory.mana] store result score @s enmity.use run data get entity @s Inventory[{Slot:9b}].tag.CustomModelData
execute if entity @s[tag=enmity.accessories.ender.mana] store result score @s enmity.use run data get entity @s EnderItems[{Slot:0b}].tag.CustomModelData
execute if score @s enmity.use matches 9 run scoreboard players add @s enmity.mana_regen 2
execute if score @s enmity.use matches 10 run scoreboard players add @s enmity.mana_regen 2
execute if score @s enmity.use matches 20 run scoreboard players add @s enmity.mana_regen 2
execute if score @s enmity.use matches 21 run scoreboard players add @s enmity.mana_regen 4
execute if score @s enmity.use matches 22 run scoreboard players add @s enmity.mana_regen 4
execute if score @s enmity.use matches 23 run scoreboard players add @s enmity.mana_regen 1
execute if score @s enmity.use matches 64 run scoreboard players add @s enmity.mana_regen 8
execute if score @s enmity.use matches 114 run scoreboard players add @s enmity.mana_regen 16
tag @s add enmity.this
execute if score @s enmity.use matches 118 as @e[type=#enmity:used_as_sentries,tag=enmity.sentry] if score @s enmity.player_id = @p[tag=enmity.this] enmity.player_id run scoreboard players operation @p[tag=enmity.this] enmity.mana_regen += %const_1 enmity.value
tag @s remove enmity.this
scoreboard players set @s enmity.use 0