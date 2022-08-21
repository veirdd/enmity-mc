tag @s add enmity.this
execute as @e[type=!#enmity:not_living] if score @s enmity.subjugator_capture_id = @a[tag=enmity.this,limit=1] enmity.player_id run tag @s add enmity.captured
tag @s remove enmity.this
execute if score @s enmity.subjugator_range matches 1 positioned ~ ~0.5 ~ run tp @e[type=!#enmity:not_living,tag=enmity.captured] ^ ^ ^1
execute if score @s enmity.subjugator_range matches 2 positioned ~ ~0.5 ~ run tp @e[type=!#enmity:not_living,tag=enmity.captured] ^ ^ ^2
execute if score @s enmity.subjugator_range matches 3 positioned ~ ~0.5 ~ run tp @e[type=!#enmity:not_living,tag=enmity.captured] ^ ^ ^3
execute if score @s enmity.subjugator_range matches 4 positioned ~ ~0.5 ~ run tp @e[type=!#enmity:not_living,tag=enmity.captured] ^ ^ ^4
execute if score @s enmity.subjugator_range matches 5 positioned ~ ~0.5 ~ run tp @e[type=!#enmity:not_living,tag=enmity.captured] ^ ^ ^5
execute if score @s enmity.subjugator_range matches 6 positioned ~ ~0.5 ~ run tp @e[type=!#enmity:not_living,tag=enmity.captured] ^ ^ ^6
execute if score @s enmity.subjugator_range matches 7 positioned ~ ~0.5 ~ run tp @e[type=!#enmity:not_living,tag=enmity.captured] ^ ^ ^7
execute if score @s enmity.subjugator_range matches 8 positioned ~ ~0.5 ~ run tp @e[type=!#enmity:not_living,tag=enmity.captured] ^ ^ ^8
execute if score @s enmity.subjugator_range matches 9 positioned ~ ~0.5 ~ run tp @e[type=!#enmity:not_living,tag=enmity.captured] ^ ^ ^9
execute if score @s enmity.subjugator_range matches 10 positioned ~ ~0.5 ~ run tp @e[type=!#enmity:not_living,tag=enmity.captured] ^ ^ ^10
execute if score @s enmity.subjugator_range matches 11 positioned ~ ~0.5 ~ run tp @e[type=!#enmity:not_living,tag=enmity.captured] ^ ^ ^11
execute if score @s enmity.subjugator_range matches 12 positioned ~ ~0.5 ~ run tp @e[type=!#enmity:not_living,tag=enmity.captured] ^ ^ ^12
execute if score @s enmity.subjugator_range matches 13 positioned ~ ~0.5 ~ run tp @e[type=!#enmity:not_living,tag=enmity.captured] ^ ^ ^13
execute if score @s enmity.subjugator_range matches 14 positioned ~ ~0.5 ~ run tp @e[type=!#enmity:not_living,tag=enmity.captured] ^ ^ ^14
execute if score @s enmity.subjugator_range matches 15 positioned ~ ~0.5 ~ run tp @e[type=!#enmity:not_living,tag=enmity.captured] ^ ^ ^15
execute if score @s enmity.subjugator_range matches 16 positioned ~ ~0.5 ~ run tp @e[type=!#enmity:not_living,tag=enmity.captured] ^ ^ ^16
execute unless entity @e[type=!#enmity:not_living,tag=enmity.captured] run function enmity:items/usable/subjugator/release
execute at @e[type=!#enmity:not_living,tag=enmity.captured] run particle portal ~ ~1 ~ 0.5 0.5 0.5 2 7 force
execute at @e[type=!#enmity:not_living,tag=enmity.captured] run particle reverse_portal ~ ~1 ~ 0.5 0.5 0.5 0.5 4 force
execute at @e[type=!#enmity:not_living,tag=enmity.captured] run playsound entity.guardian.ambient neutral @a[distance=0..] ~ ~1 ~ 2 2 0
tag @e[type=!#enmity:not_living,tag=enmity.captured] remove enmity.captured