playsound enmity:entity.elder_guardian.laser neutral @a[distance=0..] ~ ~ ~ 2 1 0
playsound enmity:entity.elder_guardian.laser neutral @a[distance=0..] ~ ~ ~ 2 0.875 0
playsound enmity:entity.elder_guardian.laser neutral @a[distance=0..] ~ ~ ~ 2 0.75 0
playsound minecraft:entity.elder_guardian.curse neutral @a[distance=0..] ~ ~ ~ 2 1 0
playsound minecraft:entity.elder_guardian.curse neutral @a[distance=0..] ~ ~ ~ 2 0.9 0
playsound minecraft:entity.elder_guardian.curse neutral @a[distance=0..] ~ ~ ~ 2 0.8 0
playsound minecraft:entity.elder_guardian.curse neutral @a[distance=0..] ~ ~ ~ 2 0.7 0
playsound minecraft:entity.elder_guardian.curse neutral @a[distance=0..] ~ ~ ~ 2 0.6 0
playsound minecraft:entity.elder_guardian.curse neutral @a[distance=0..] ~ ~ ~ 2 0.5 0
playsound block.note_block.basedrum neutral @a[distance=0..] ~ ~ ~ 2 0 0
playsound block.note_block.basedrum neutral @a[distance=0..] ~ ~ ~ 2 0 0
playsound block.note_block.basedrum neutral @a[distance=0..] ~ ~ ~ 2 0 0
scoreboard players set @s enmity.raycast 0
summon marker ~ ~ ~ {Tags:["enmity.projectile","enmity.elder_laser"]}
scoreboard players operation @e[type=marker,tag=enmity.elder_laser,limit=1] enmity.player_id = @s enmity.player_id
execute if score %difficulty enmity.value matches 1 run scoreboard players set @e[type=marker,tag=enmity.elder_laser,limit=1] enmity.dmg 34
execute if score %difficulty enmity.value matches 2 run scoreboard players set @e[type=marker,tag=enmity.elder_laser,limit=1] enmity.dmg 38
scoreboard players operation @e[type=marker,tag=enmity.elder_laser,limit=1] enmity.dmg += @s enmity.dmg_bst
function enmity:entities/mobs/elder_guardian/projectiles/laser/raycast
kill @e[type=marker,tag=enmity.elder_laser,limit=1]