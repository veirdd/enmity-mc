summon marker ~ ~ ~ {Tags:["enmity.projectile","enmity.withers_ray"]}
tp @e[type=marker,tag=enmity.withers_ray,limit=1] @s
execute if score %difficulty enmity.value matches 1 run scoreboard players set @e[type=marker,tag=enmity.withers_ray] enmity.dmg 9
execute if score %difficulty enmity.value matches 2 run scoreboard players set @e[type=marker,tag=enmity.withers_ray] enmity.dmg 12
function enmity:entities/mobs/wither/projectiles/ray/raycast2
kill @s
kill @e[type=marker,tag=enmity.withers_ray]
playsound block.beacon.deactivate neutral @a[distance=0..] ~ ~ ~ 2 0 0
playsound block.beacon.deactivate neutral @a[distance=0..] ~ ~ ~ 2 0 0
playsound block.beacon.deactivate neutral @a[distance=0..] ~ ~ ~ 2 0 0
playsound block.note_block.basedrum neutral @a[distance=0..] ~ ~ ~ 2 0 0
playsound block.note_block.basedrum neutral @a[distance=0..] ~ ~ ~ 2 0 0
playsound block.note_block.basedrum neutral @a[distance=0..] ~ ~ ~ 2 0 0
playsound entity.evoker.prepare_attack neutral @a[distance=0..] ~ ~ ~ 2 1 0