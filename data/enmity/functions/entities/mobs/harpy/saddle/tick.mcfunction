tag @s add enmity.this
scoreboard players add @s enmity.age 1
execute as @e[type=phantom,tag=enmity.harpy] if score @s enmity.age = @e[type=pig,tag=enmity.this,limit=1] enmity.age run tag @s add enmity.this
scoreboard players remove @s enmity.age 1
execute unless entity @e[type=phantom,tag=enmity.this] run data merge entity @s {Saddle:1b}
execute unless entity @e[type=phantom,tag=enmity.this] run kill @s
tag @e[type=phantom,tag=enmity.this,limit=1] remove enmity.this
tag @s remove enmity.this