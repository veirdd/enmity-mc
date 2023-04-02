playsound entity.evoker.cast_spell neutral @a[distance=0..] ~ ~ ~ 2 1.5 0
playsound entity.glow_squid.squirt neutral @a[distance=0..] ~ ~ ~ 2 1.5 0
summon bat ~ ~ ~ {Silent:1,Invulnerable:1,Tags:["enmity.projectile","enmity.new","enmity.soul2","enmity.actual_soul2"]}
summon bat ~ ~ ~ {Silent:1,Invulnerable:1,Tags:["enmity.projectile","enmity.new","enmity.soul2","enmity.actual_soul2"]}
summon bat ~ ~ ~ {Silent:1,Invulnerable:1,Tags:["enmity.projectile","enmity.new","enmity.soul2","enmity.actual_soul2"]}
summon bat ~ ~ ~ {Silent:1,Invulnerable:1,Tags:["enmity.projectile","enmity.new","enmity.soul2","enmity.actual_soul2"]}
summon bat ~ ~ ~ {Silent:1,Invulnerable:1,Tags:["enmity.projectile","enmity.new","enmity.soul2","enmity.actual_soul2"]}
summon bat ~ ~ ~ {Silent:1,Invulnerable:1,Tags:["enmity.projectile","enmity.new","enmity.soul2","enmity.actual_soul2"]}
summon bat ~ ~ ~ {Silent:1,Invulnerable:1,Tags:["enmity.projectile","enmity.new","enmity.soul2","enmity.actual_soul2"]}
summon bat ~ ~ ~ {Silent:1,Invulnerable:1,Tags:["enmity.projectile","enmity.new","enmity.soul2","enmity.actual_soul2"]}
scoreboard players set @e[type=bat,tag=enmity.soul2,tag=enmity.new] enmity.dmg 11
scoreboard players operation @e[type=bat,tag=enmity.new] enmity.dmg += @s enmity.dmg_bst
effect give @e[type=bat,tag=enmity.new] invisibility 1000000 255 true
execute if entity @s[type=ghast] run tag @e[type=bat,tag=enmity.new] add enmity.ghast
execute unless entity @s[type=ghast] run scoreboard players operation @e[type=bat,tag=enmity.new] enmity.player_id = @s enmity.player_id
execute if entity @s[type=ghast] run scoreboard players set @s enmity.dmg 9
tag @e[type=bat,tag=enmity.new] remove enmity.new