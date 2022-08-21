playsound entity.evoker.cast_spell neutral @a[distance=0..] ~ ~ ~ 1 0.7 0
summon bat ~ ~0.5 ~ {Silent:1,Invulnerable:1,Tags:["enmity.projectile","enmity.new","enmity.soul2"]}
scoreboard players set @e[type=bat,tag=enmity.soul2,tag=enmity.new] enmity.dmg 8
scoreboard players set @e[type=bat,tag=enmity.soul2,tag=enmity.new] enmity.age 15
scoreboard players operation @e[type=bat,tag=enmity.new] enmity.dmg += @s enmity.dmg_bst
effect give @e[type=bat,tag=enmity.new] invisibility 1000000 255 true
scoreboard players operation @e[type=bat,tag=enmity.new] enmity.player_id = @s enmity.player_id
tag @e[type=bat,tag=enmity.new] remove enmity.new