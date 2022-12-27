effect clear @s levitation
effect give @s blindness 10 0
tag @s add enmity.this
scoreboard players set @s enmity.taken_dmg 6
function enmity:misc/health_modification/request
tag @s remove enmity.this