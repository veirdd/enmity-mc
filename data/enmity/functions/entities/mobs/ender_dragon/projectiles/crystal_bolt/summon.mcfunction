playsound block.note_block.chime neutral @a[distance=0..] ~ ~ ~ 2 0 0
playsound block.note_block.chime neutral @a[distance=0..] ~ ~ ~ 2 0.2 0
playsound block.respawn_anchor.deplete neutral @a[distance=0..] ~ ~ ~ 2 1.5 0
summon minecraft:marker ~ ~ ~ {Tags:["enmity.new","enmity.dragon_projectile","enmity.projectile","enmity.dragon_crystal_bolt"]}
execute if score %difficulty enmity.value matches 2 run scoreboard players set @e[type=marker,tag=enmity.new,limit=1] enmity.dmg 19
execute if score %difficulty enmity.value matches 1 run scoreboard players set @e[type=marker,tag=enmity.new,limit=1] enmity.dmg 16
tp @e[type=marker,tag=enmity.new,limit=1] ~ ~ ~ facing 0 128 0
tag @e[type=marker,tag=enmity.new,limit=1] remove enmity.new