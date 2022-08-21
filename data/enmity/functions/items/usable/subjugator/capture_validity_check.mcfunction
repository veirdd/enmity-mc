tag @s add enmity.this
execute as @e[type=!#enmity:not_living] if score @s enmity.subjugator_capture_id = @a[tag=enmity.this,limit=1] enmity.player_id run tag @s add enmity.captured
tag @s remove enmity.this
execute unless entity @s[scores={enmity.math_a=108..110}] if entity @e[type=!#enmity:not_living,tag=enmity.captured] run function enmity:items/usable/subjugator/release
execute unless entity @s[tag=enmity.subjugator] if entity @e[type=!#enmity:not_living,tag=enmity.captured] run function enmity:items/usable/subjugator/release
tag @e[type=!#enmity:not_living,tag=enmity.captured] remove enmity.captured