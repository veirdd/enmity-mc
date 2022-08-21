tag @s add enmity.this
execute as @e[type=pig,tag=enmity.harpy_saddle] if score @s enmity.age = @e[type=phantom,tag=enmity.this,limit=1] enmity.age run tag @s add enmity.this
tp @e[type=pig,tag=enmity.this] ~ ~-0.4 ~ facing ^ ^ ^1
execute as @e[type=pig,tag=enmity.this] if predicate enmity:entity/is_ridden run tag @s add enmity.ridden
execute as @e[type=pig,tag=enmity.this,tag=!enmity.ridden] at @s run tp @s ^ ^ ^0.3
data merge entity @s {NoAI:1}
execute if entity @e[type=pig,tag=enmity.this,tag=enmity.ridden] run function enmity:entities/mobs/harpy/ridden/tick
data merge entity @e[type=pig,tag=enmity.this,tag=enmity.ridden,limit=1] {Saddle:0b}
data merge entity @e[type=pig,tag=enmity.this,tag=!enmity.ridden,limit=1] {Saddle:1b}
data modify entity @e[type=pig,tag=enmity.this,limit=1] Health set from entity @s Health
tag @e[type=pig,tag=enmity.this,limit=1] remove enmity.this
tag @s remove enmity.this
tag @e[type=pig,tag=enmity.ridden] remove enmity.ridden
scoreboard players add @s enmity.age 1
tag @s[tag=enmity.stop_harpy_saddling] remove enmity.stop_harpy_saddling