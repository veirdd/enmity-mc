execute positioned ^ ^ ^0.2 positioned ~-0.3 ~-0.3 ~-0.3 as @a[scores={enmity.iframes=0},gamemode=!creative,gamemode=!spectator,tag=!enmity.update_health,dx=0,limit=1] positioned ~-0.39 ~-0.39 ~-0.39 if entity @s[dx=0] run tag @s add enmity.hit
tag @s add enmity.this
scoreboard players operation @a[tag=enmity.hit] enmity.taken_dmg = @s enmity.dmg
execute as @a[tag=enmity.hit] run function enmity:utility/health_modification/request
tag @s remove enmity.this
effect give @a[tag=enmity.hit] poison 5 0
execute if entity @a[tag=enmity.hit] run particle dust 0 0.5 0 1 ^ ^ ^0.3 0.3 0.3 0.3 0 10 force
execute if entity @a[tag=enmity.hit] run playsound entity.bat.hurt hostile @a[distance=0..] ~ ~ ~ 2 1 0
execute if entity @a[tag=enmity.hit] run playsound minecraft:entity.player.hurt_sweet_berry_bush player @a[distance=0..] ~ ~ ~ 2 1 0
tag @a[tag=enmity.hit] remove enmity.hit