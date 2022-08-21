execute if score @s enmity.age matches 1.. run tag @s remove enmity.stop_dummies
tag @s add enmity.this
execute as @e[type=zombie,tag=enmity.target_dummy] if score @s enmity.age = @e[type=armor_stand,tag=enmity.this,limit=1] enmity.age run tag @s add enmity.this
execute if entity @s[nbt={OnGround:1b}] run tp @s ~ ~ ~ facing entity @p[gamemode=!spectator] feet
tp @e[type=zombie,tag=enmity.this,limit=1] ~ ~0.1 ~
execute unless entity @e[type=zombie,tag=enmity.this,limit=1] run kill @s
execute as @p[distance=..2] if predicate enmity:entity/is_sneaking as @e[type=armor_stand,tag=enmity.this,limit=1] run kill @s
tag @e[type=zombie,tag=enmity.this,limit=1] remove enmity.this
tag @s remove enmity.this