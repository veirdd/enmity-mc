execute if score %difficulty enmity.value matches 1 run scoreboard players set @a[tag=!enmity.invulnerable,tag=enmity.hit] enmity.taken_dmg 16
execute if score %difficulty enmity.value matches 2 run scoreboard players set @a[tag=!enmity.invulnerable,tag=enmity.hit] enmity.taken_dmg 20
tag @s add enmity.this
execute as @a[tag=!enmity.invulnerable,tag=enmity.hit] at @s run function enmity:utility/damage_indicators/show
execute as @a[tag=!enmity.invulnerable,tag=enmity.hit,tag=!enmity.update_health] run function enmity:utility/health_modification/request
tag @s remove enmity.this
execute as @a[tag=enmity.hit] at @s run playsound block.sculk_shrieker.shriek hostile @s ~ ~ ~ 2 2 0
execute as @a[tag=enmity.hit] at @s run playsound block.sculk_shrieker.shriek hostile @s ~ ~ ~ 2 2 0
execute as @a[tag=enmity.hit] at @s run playsound block.sculk_shrieker.shriek hostile @s ~ ~ ~ 2 1.5 0
execute as @a[tag=enmity.hit] at @s run playsound block.sculk_shrieker.shriek hostile @s ~ ~ ~ 2 1.5 0
execute as @a[tag=enmity.hit] at @s run playsound block.sculk_shrieker.shriek hostile @s ~ ~ ~ 2 1 0
execute as @a[tag=enmity.hit] at @s run playsound block.sculk_shrieker.shriek hostile @s ~ ~ ~ 2 1 0
execute as @a[tag=enmity.hit] at @s run playsound block.sculk_shrieker.shriek hostile @s ~ ~ ~ 2 0.5 0
execute as @a[tag=enmity.hit] at @s run playsound block.sculk_shrieker.shriek hostile @s ~ ~ ~ 2 0.5 0
execute as @a[tag=enmity.hit] at @s run playsound entity.enderman.scream hostile @s ~ ~ ~ 2 2 0
execute as @a[tag=enmity.hit] at @s run playsound entity.enderman.scream hostile @s ~ ~ ~ 2 2 0
execute as @a[tag=enmity.hit] at @s run playsound entity.enderman.scream hostile @s ~ ~ ~ 2 1.6 0
execute as @a[tag=enmity.hit] at @s run playsound entity.enderman.scream hostile @s ~ ~ ~ 2 1.6 0
execute as @a[tag=enmity.hit] at @s run playsound entity.enderman.scream hostile @s ~ ~ ~ 2 1.2 0
execute as @a[tag=enmity.hit] at @s run playsound entity.enderman.scream hostile @s ~ ~ ~ 2 1.2 0
tag @a[tag=enmity.hit] remove enmity.hit
execute as @e[type=zombie,tag=enmity.smiler] at @s run function enmity:entities/mobs/smiler/vanish