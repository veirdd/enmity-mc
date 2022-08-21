tag @s add enmity.this
summon marker ~ ~ ~ {Tags:["enmity.projectile","enmity.nether_geyser_spawner","enmity.new"]}
execute as @e[type=marker,tag=enmity.new] at @s run spreadplayers ~ ~ 0 16 false @s
execute as @e[type=marker,tag=enmity.new] at @s unless entity @a[tag=enmity.this,distance=..40] run tp @s ~ ~-30 ~
execute as @e[type=marker,tag=enmity.new] at @s unless entity @a[tag=enmity.this,distance=..40] run tp @s ~ ~-30 ~
execute as @e[type=marker,tag=enmity.new] at @s unless entity @a[tag=enmity.this,distance=..40] run tp @s ~ ~-30 ~
execute as @e[type=marker,tag=enmity.new] at @s unless entity @a[tag=enmity.this,distance=..40] run tp @s ~ ~-30 ~
execute as @e[type=marker,tag=enmity.new] at @s unless entity @a[tag=enmity.this,distance=..40] run tp @s ~ ~-30 ~
execute as @e[type=marker,tag=enmity.new] at @s unless entity @a[tag=enmity.this,distance=..40] run tp @s ~ ~-30 ~
execute as @e[type=marker,tag=enmity.new] at @s unless entity @a[tag=enmity.this,distance=..40] run tp @s ~ ~-30 ~
execute as @e[type=marker,tag=enmity.new] at @s unless entity @a[tag=enmity.this,distance=..40] run tp @s ~ ~-30 ~
execute if score %difficulty enmity.value matches 1 run scoreboard players set @e[type=marker,tag=enmity.new] enmity.dmg 6
execute if score %difficulty enmity.value matches 2 run scoreboard players set @e[type=marker,tag=enmity.new] enmity.dmg 10
tag @e[type=marker,tag=enmity.new] remove enmity.new
tag @s remove enmity.this