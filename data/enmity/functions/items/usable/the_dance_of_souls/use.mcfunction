playsound entity.evoker.cast_spell neutral @a[distance=0..] ~ ~ ~ 2 0.7 0
playsound entity.glow_squid.squirt neutral @a[distance=0..] ~ ~ ~ 2 0.5 0
scoreboard players remove @s enmity.mana 160
scoreboard players set @s enmity.cooldown 48
execute unless entity @s[name="pexdark"] run particle cloud ~ ~0.5 ~ 0.3 0.3 0.3 0 40 force
execute unless entity @s[name="pexdark"] run particle end_rod ~ ~1 ~ 0.2 0.2 0.2 0.3 40 force
execute if entity @s[name="pexdark"] run particle dust 0 1 0 2 ~ ~0.5 ~ 0.3 0.3 0.3 0 40 force
execute if entity @s[name="pexdark"] run particle totem_of_undying ~ ~1 ~ 0.2 0.2 0.2 1 40 force
summon bat ~ ~0.5 ~ {Silent:1,Invulnerable:1,Tags:["enmity.projectile","enmity.new","enmity.soul2"]}
summon bat ~ ~0.5 ~ {Silent:1,Invulnerable:1,Tags:["enmity.projectile","enmity.new","enmity.soul2"]}
summon bat ~ ~0.5 ~ {Silent:1,Invulnerable:1,Tags:["enmity.projectile","enmity.new","enmity.soul2"]}
summon bat ~ ~0.5 ~ {Silent:1,Invulnerable:1,Tags:["enmity.projectile","enmity.new","enmity.soul2"]}
summon bat ~ ~0.5 ~ {Silent:1,Invulnerable:1,Tags:["enmity.projectile","enmity.new","enmity.soul2"]}
summon bat ~ ~0.5 ~ {Silent:1,Invulnerable:1,Tags:["enmity.projectile","enmity.new","enmity.soul2"]}
summon bat ~ ~0.5 ~ {Silent:1,Invulnerable:1,Tags:["enmity.projectile","enmity.new","enmity.soul2"]}
summon bat ~ ~0.5 ~ {Silent:1,Invulnerable:1,Tags:["enmity.projectile","enmity.new","enmity.soul2"]}
scoreboard players set @e[type=bat,tag=enmity.soul2,tag=enmity.new] enmity.dmg 11
scoreboard players operation @e[type=bat,tag=enmity.new] enmity.dmg += @s enmity.dmg_bst
effect give @e[type=bat,tag=enmity.new] invisibility 1000000 255 true
scoreboard players operation @e[type=bat,tag=enmity.new] enmity.player_id = @s enmity.player_id
execute if entity @s[type=ghast] run tag @e[type=bat,tag=enmity.new] add enmity.ghast
execute if score @s enmity.player_targeting matches 1 run tag @e[type=bat,tag=enmity.new] add enmity.player_targeting
execute if entity @s[name="pexdark"] run tag @e[type=bat,tag=enmity.new] add enmity.green
tag @e[type=bat,tag=enmity.new] remove enmity.new