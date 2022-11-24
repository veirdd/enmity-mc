tag @s add enmity.this2
execute as @e[tag=enmity.this,tag=!enmity.this2] if score @s enmity.age > @e[tag=enmity.this2,limit=1] enmity.age run tag @s remove enmity.this
tag @s remove enmity.this2