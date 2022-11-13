execute unless score @s enmity.age matches 5 run scoreboard players add @s enmity.age 1 
tp @s ~ ~ ~ facing entity @p[gamemode=!spectator]
execute if entity @p[gamemode=!spectator,distance=..72,nbt={ActiveEffects:[{Id:16}]}] run function enmity:entities/mobs/smiler/vanish
execute if entity @e[type=lightning_bolt] run function enmity:entities/mobs/smiler/vanish
execute if predicate enmity:environment/is_thundering run function enmity:entities/mobs/smiler/vanish
execute if entity @e[type=zombie,tag=enmity.smiler,distance=0.00001..16] run function enmity:entities/mobs/smiler/vanish
execute store result score @s enmity.math_a if entity @a[distance=..72]
execute unless score @s enmity.math_a matches 1 run function enmity:entities/mobs/smiler/vanish
execute unless predicate enmity:environment/is_smiler_time run function enmity:entities/mobs/smiler/vanish
execute at @s anchored eyes unless block ^ ^ ^ #enmity:not_solid run function enmity:entities/mobs/smiler/vanish
execute at @s anchored eyes unless block ^ ^ ^1 #enmity:not_solid run function enmity:entities/mobs/smiler/vanish
execute at @s anchored eyes if block ^ ^ ^-5 #enmity:seethrough if block ^ ^ ^-10 #enmity:seethrough if block ^ ^ ^-15 #enmity:seethrough if block ^ ^ ^-20 #enmity:seethrough if block ^ ^ ^-25 #enmity:seethrough if block ^ ^ ^-30 #enmity:seethrough if block ^ ^ ^-35 #enmity:seethrough if block ^ ^ ^-40 #enmity:seethrough if block ^ ^ ^-45 #enmity:seethrough if block ^ ^ ^-50 #enmity:seethrough if block ^ ^ ^-55 #enmity:seethrough if block ^ ^ ^-60 #enmity:seethrough if block ^ ^ ^-65 #enmity:seethrough if block ^ ^ ^-70 #enmity:seethrough if block ^ ^ ^-75 #enmity:seethrough if block ^ ^ ^-80 #enmity:seethrough if block ^ ^ ^-85 #enmity:seethrough if block ^ ^ ^-90 #enmity:seethrough if block ^ ^ ^-95 #enmity:seethrough if block ^ ^ ^-100 #enmity:seethrough run function enmity:entities/mobs/smiler/vanish
execute at @s anchored eyes unless predicate enmity:environment/light_level/5-15 positioned ^ ^ ^-2 unless predicate enmity:environment/light_level/5-15 positioned ^ ^ ^-2 unless predicate enmity:environment/light_level/5-15 positioned ^ ^ ^-5 unless predicate enmity:environment/light_level/5-15 positioned ^ ^ ^-5 unless predicate enmity:environment/light_level/5-15 positioned ^ ^ ^-5 unless predicate enmity:environment/light_level/5-15 positioned ^ ^ ^-5 unless predicate enmity:environment/light_level/5-15 positioned ^ ^ ^-5 unless predicate enmity:environment/light_level/5-15 positioned ^ ^ ^-5 unless predicate enmity:environment/light_level/5-15 positioned ^ ^ ^-5 unless predicate enmity:environment/light_level/5-15 positioned ^ ^ ^-5 unless predicate enmity:environment/light_level/5-15 positioned ^ ^ ^-5 unless predicate enmity:environment/light_level/5-15 positioned ^ ^ ^-5 unless predicate enmity:environment/light_level/5-15 positioned ^ ^ ^-5 unless predicate enmity:environment/light_level/5-15 positioned ^ ^ ^-5 unless predicate enmity:environment/light_level/5-15 positioned ^ ^ ^-5 unless predicate enmity:environment/light_level/5-15 run tag @s add enmity.in_darkness
execute unless entity @s[tag=enmity.in_darkness] run function enmity:entities/mobs/smiler/vanish
tag @s remove enmity.in_darkness
effect clear @s glowing
tag @s add enmity.this
execute as @p at @s anchored eyes facing entity @e[type=zombie,tag=enmity.this] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 unless entity @s[distance=..1.2] as @e[type=zombie,tag=enmity.this] at @s run function enmity:entities/mobs/smiler/not_looking_near
execute as @p at @s anchored eyes facing entity @e[type=zombie,tag=enmity.this] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..1.2] as @e[type=zombie,tag=enmity.this] at @s run function enmity:entities/mobs/smiler/looking_near
execute if score @s enmity.cooldown matches 1.. at @p[gamemode=!spectator,gamemode=!creative,distance=..10] run tp @p[gamemode=!spectator,gamemode=!creative,distance=..10] ~ ~ ~ facing entity @s feet
execute if score @s enmity.cooldown matches 1.. facing entity @p[gamemode=!spectator,gamemode=!creative,distance=..10] feet run tp @s ^ ^ ^0.5
execute if score @s enmity.cooldown matches 3 run data modify entity @s ArmorItems[3].tag.CustomModelData set value 1020
execute if score @s enmity.cooldown matches 5 run effect give @a[distance=..10] blindness
tag @s remove enmity.this
execute if score @s enmity.cooldown matches 0 run function enmity:entities/mobs/smiler/cooldown_done
scoreboard players remove @s enmity.cooldown 1