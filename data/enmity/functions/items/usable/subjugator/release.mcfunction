scoreboard players reset @e[type=!#enmity:not_living,tag=enmity.captured] enmity.subjugator_capture_id
effect clear @e[type=!#enmity:not_living,tag=enmity.captured] slow_falling
tag @e[type=!#enmity:not_living,tag=enmity.captured] remove enmity.captured
tag @s remove enmity.subjugator