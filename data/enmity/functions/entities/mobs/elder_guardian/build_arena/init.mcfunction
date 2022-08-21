gamerule doTileDrops false
fill ~1 ~ ~1 ~-1 ~ ~-1 air destroy
gamerule doTileDrops true
kill @e[type=marker,tag=enmity.elder_anchor]
execute if score %hardmode enmity.value matches 1 run summon marker ~ ~1 ~ {Tags:["enmity.elder_anchor"]}
execute if score %hardmode enmity.value matches 0 run tellraw @a {"text":"The sacrifice must be infused by the soul of the Wither.","color":"gray"}
particle elder_guardian ~ ~ ~ 0 0 0 0 1 force @a[distance=..64]
playsound entity.elder_guardian.curse neutral @a[distance=0..] ~ ~ ~ 2 1 0
execute if score %hardmode enmity.value matches 1 run weather rain