tag @s add enmity.this
execute as @e[type=!#enmity:not_living] if score @s enmity.subjugator_capture_id = @a[tag=enmity.this,limit=1] enmity.player_id run tag @s add enmity.captured
execute if score @s enmity.mana matches 500.. unless entity @e[type=!#enmity:not_living,tag=enmity.captured] run function enmity:items/usable/subjugator/raycast
execute if entity @e[type=!#enmity:not_living,tag=enmity.captured] run function enmity:items/usable/subjugator/release
tag @s remove enmity.this