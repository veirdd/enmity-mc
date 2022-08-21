summon marker ~ ~ ~ {Tags:["enmity.projectile","enmity.withering_beam","enmity.this"]}
scoreboard players operation @e[type=marker,tag=enmity.withering_beam,limit=1] enmity.dmg += @s enmity.dmg
scoreboard players operation @e[type=marker,tag=enmity.withering_beam,limit=1] enmity.player_id = @s enmity.player_id
tp @e[type=marker,tag=enmity.withering_beam,limit=1] @s
function enmity:items/usable/withering_beam_staff/raycast2
kill @s
kill @e[type=marker,tag=enmity.withering_beam]
playsound block.beacon.deactivate neutral @a[distance=0..] ~ ~ ~ 2 0 0
playsound block.beacon.deactivate neutral @a[distance=0..] ~ ~ ~ 2 0 0
playsound block.note_block.basedrum neutral @a[distance=0..] ~ ~ ~ 2 0 0
playsound block.note_block.basedrum neutral @a[distance=0..] ~ ~ ~ 2 0 0
playsound entity.evoker.prepare_attack neutral @a[distance=0..] ~ ~ ~ 2 1 0