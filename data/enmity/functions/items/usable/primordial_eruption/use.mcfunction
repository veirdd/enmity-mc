scoreboard players remove @s enmity.mana 90
scoreboard players set @s enmity.cooldown 12
scoreboard players set @s enmity.raycast 0
playsound block.soul_sand.step neutral @a[distance=0..] ~ ~ ~ 2 0 0
playsound block.soul_sand.break neutral @a[distance=0..] ~ ~ ~ 2 0 0
playsound block.soul_sand.break neutral @a[distance=0..] ~ ~ ~ 2 0 0
playsound block.soul_sand.break neutral @a[distance=0..] ~ ~ ~ 2 0 0
playsound entity.lightning_bolt.thunder neutral @a[distance=0..] ~ ~ ~ 0.6 2 0
summon marker ~ ~7 ~ {Tags:["enmity.projectile","enmity.primordial_eruption"]}
scoreboard players operation @e[type=marker,tag=enmity.primordial_eruption] enmity.player_id = @s enmity.player_id
scoreboard players set @e[type=marker,tag=enmity.primordial_eruption] enmity.dmg 26
scoreboard players operation @e[type=marker,tag=enmity.primordial_eruption] enmity.dmg += @s enmity.dmg_bst
function enmity:items/usable/primordial_eruption/raycast
kill @e[type=marker,tag=enmity.primordial_eruption]