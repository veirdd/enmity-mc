summon bat ~ ~ ~ {Tags:["enmity.custom_mob","enmity.hellbat","enmity.new"],DeathLootTable:"enmity:entities/hellbat"}
effect give @e[type=bat,tag=enmity.new,limit=1] fire_resistance 1000000 0 true
execute if score %hardmode enmity.value matches 0 if score %difficulty enmity.value matches 2 run effect give @e[type=bat,tag=enmity.new,limit=1] health_boost 1000000 2 true
execute if score %hardmode enmity.value matches 0 if score %difficulty enmity.value matches 1 run effect give @e[type=bat,tag=enmity.new,limit=1] health_boost 1000000 0 true
execute if score %hardmode enmity.value matches 1 if score %difficulty enmity.value matches 2 run effect give @e[type=bat,tag=enmity.new,limit=1] health_boost 1000000 6 true
execute if score %hardmode enmity.value matches 1 if score %difficulty enmity.value matches 1 run effect give @e[type=bat,tag=enmity.new,limit=1] health_boost 1000000 3 true
data modify entity @e[type=bat,tag=enmity.new,limit=1] Health set value 1024
scoreboard players set @e[type=bat,tag=enmity.new,limit=1] enmity.iframes 0
tag @e[type=bat,tag=enmity.new,limit=1] remove enmity.new