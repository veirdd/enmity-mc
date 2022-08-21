playsound minecraft:item.trident.hit neutral @a[distance=0..] ~ ~ ~ 2 0.7 0
playsound minecraft:entity.leash_knot.break neutral @a[distance=0..] ~ ~ ~ 2 0.7 0
playsound minecraft:entity.leash_knot.break neutral @a[distance=0..] ~ ~ ~ 2 0.7 0
playsound minecraft:entity.shulker.death neutral @a[distance=0..] ~ ~ ~ 2 2 0
scoreboard players remove @s enmity.mana 70
scoreboard players set @s enmity.cooldown 8
scoreboard players set @s enmity.raycast 0
summon marker ~ ~ ~ {Tags:["enmity.projectile","enmity.lightning_surge"]}
scoreboard players operation @e[type=marker,tag=enmity.lightning_surge] enmity.player_id = @s enmity.player_id
scoreboard players set @e[type=marker,tag=enmity.lightning_surge] enmity.dmg 8
scoreboard players operation @e[type=marker,tag=enmity.lightning_surge] enmity.dmg += @s enmity.dmg_bst
execute if score @s enmity.player_targeting matches 1 run tag @e[type=marker,tag=enmity.lightning_surge] add enmity.player_targeting
function enmity:items/usable/lightning_surge/raycast
kill @e[type=marker,tag=enmity.lightning_surge]
tag @e remove enmity.current_entity