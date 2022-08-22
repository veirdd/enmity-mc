scoreboard players operation @a[tag=!enmity.invulnerable,tag=enmity.hit] enmity.math_b = @s enmity.dmg
execute as @a[tag=!enmity.invulnerable,tag=enmity.hit] run scoreboard players operation @s enmity.math_b -= @s enmity.dmg_rdc
execute as @a[tag=!enmity.invulnerable,tag=enmity.hit] if score @s enmity.dmg_rdc_mtp matches 0.. run scoreboard players operation @s enmity.math_b *= @s enmity.dmg_rdc_mtp
execute as @a[tag=!enmity.invulnerable,tag=enmity.hit] if score @s enmity.dmg_rdc_mtp matches 0.. run scoreboard players operation @s enmity.math_b /= %const_100 enmity.value
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
execute as @a[tag=enmity.hit] at @s run playsound entity.enderman.scream hostile @s ~ ~ ~ 1.5 2 0
execute as @a[tag=enmity.hit] at @s run playsound entity.enderman.scream hostile @s ~ ~ ~ 1.5 2 0
execute as @a[tag=enmity.hit] at @s run playsound entity.enderman.scream hostile @s ~ ~ ~ 1.5 1.6 0
execute as @a[tag=enmity.hit] at @s run playsound entity.enderman.scream hostile @s ~ ~ ~ 1.5 1.6 0
execute as @a[tag=enmity.hit] at @s run playsound entity.enderman.scream hostile @s ~ ~ ~ 1.5 1.2 0
execute as @a[tag=enmity.hit] at @s run playsound entity.enderman.scream hostile @s ~ ~ ~ 1.5 1.2 0
effect give @a[tag=enmity.hit] blindness 15 0
tag @a[tag=enmity.hit] remove enmity.hit
execute as @e[type=zombie,tag=enmity.smiler] at @s run function enmity:entities/mobs/smiler/vanish