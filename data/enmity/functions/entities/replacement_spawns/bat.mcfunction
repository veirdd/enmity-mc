tp @s ~ -1000 ~
kill @s
summon bat ~ ~ ~ {Tags:["enmity.custom_mob","enmity.bat","enmity.new"]}
scoreboard players set @e[type=bat,tag=enmity.new,limit=1] enmity.iframes 0
execute if score %hardmode enmity.value matches 0 run scoreboard players set @e[type=bat,tag=enmity.new,limit=1] enmity.dmg 2
execute if score %hardmode enmity.value matches 1 run scoreboard players set @e[type=bat,tag=enmity.new,limit=1] enmity.dmg 4
execute if score %hardmode enmity.value matches 0 if score %difficulty enmity.value matches 2 run attribute @e[type=bat,tag=enmity.new,limit=1] generic.max_health base set 12
execute if score %hardmode enmity.value matches 1 if score %difficulty enmity.value matches 2 run attribute @e[type=bat,tag=enmity.new,limit=1] generic.max_health base set 36
execute if score %hardmode enmity.value matches 1 if score %difficulty enmity.value matches 1 run attribute @e[type=bat,tag=enmity.new,limit=1] generic.max_health base set 28
data modify entity @e[type=bat,tag=enmity.new,limit=1] Health set value 1024
tag @e[type=bat,tag=enmity.new,limit=1] remove enmity.new