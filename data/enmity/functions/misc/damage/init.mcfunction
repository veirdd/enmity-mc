execute store result score @s[tag=!enmity.hit] enmity.taken_dmg run scoreboard players operation @s enmity.dmg_buffer_2 -= @s enmity.dmg_buffer_1
execute unless score @s[tag=enmity.hit] enmity.taken_dmg matches 0.. run scoreboard players set @s enmity.taken_dmg 0
scoreboard players add @s[tag=enmity.hit,type=player] enmity.taken_dmg 1
scoreboard players add @s[tag=enmity.hit,type=!player] enmity.taken_dmg 1
tag @s add enmity.this_damage
execute at @e[type=marker,tag=enmity.setup,limit=1] run setblock ~ -64 ~ oak_sign{Text1:'{"score":{"name":"@e[type=!#enmity:not_living,tag=!enmity.invulnerable,tag=enmity.this_damage,limit=1]","objective":"enmity.taken_dmg"},"color":"red"}'} replace
execute unless score @s enmity.hp_dummy <= @s enmity.taken_dmg run summon item ~ ~1 ~ {Invulnerable:1,Item:{id:"firework_star",Count:1b,tag:{Enmity.DeleteItem:1,CustomModelData:1001,display:{Name:'{"text":"Damage Indicator","italic":false}',Lore:['{"text":"Something went wrong...","italic":false,"color":"gray"}']}}},CustomNameVisible:1,Tags:["enmity.new","enmity.projectile"],PickupDelay:9999,Age:5980,NoGravity:1,Motion:[0.0d,0.1d,0.0d]}
execute at @e[type=marker,tag=enmity.setup,limit=1] run data modify entity @e[type=item,tag=enmity.new,limit=1] CustomName set from block ~ -64 ~ Text1
tag @e[type=item,tag=enmity.new] remove enmity.new
execute at @e[type=marker,tag=enmity.setup,limit=1] run setblock ~ -64 ~ bedrock replace
tag @s remove enmity.this_damage
scoreboard players set @s[tag=enmity.hit] enmity.dmg_buffer_2 0
scoreboard players remove @s[tag=enmity.hit,type=!player] enmity.taken_dmg 1

execute if entity @s[type=ender_dragon,tag=!enmity.dead] if score @s enmity.hp_dummy <= @s enmity.taken_dmg run function enmity:entities/mobs/ender_dragon/on_death
execute if entity @s[type=player] at @s run function enmity:misc/damage/on_player_damage
execute if entity @s[type=#enmity:no_damage_sound,tag=enmity.hit] at @s run function enmity:misc/damage_sound
execute if entity @s[type=zombified_piglin,tag=enmity.hit] at @s run data modify entity @s AngryAt set from entity @p[distance=0..] UUID
execute if entity @s[type=zombie,tag=enmity.target_dummy] run scoreboard players operation @s enmity.math_f += @s enmity.taken_dmg