playsound entity.ender_dragon.hurt neutral @a[distance=0..] ~ ~ ~ 2 0 0
summon minecraft:marker ~ ~ ~ {Tags:["enmity.new","enmity.dragon_projectile","enmity.projectile","enmity.dragon_bolt"]}
execute if score %difficulty enmity.value matches 2 run scoreboard players set @e[type=marker,tag=enmity.new,limit=1] enmity.dmg 19
execute if score %difficulty enmity.value matches 1 run scoreboard players set @e[type=marker,tag=enmity.new,limit=1] enmity.dmg 18
tp @e[type=marker,tag=enmity.new,limit=1] ~ ~ ~ facing entity @p[tag=enmity.dragon_target] eyes
tag @e[type=marker,tag=enmity.new,limit=1] remove enmity.new