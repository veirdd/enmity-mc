tag @s add enmity.this
execute as @e[type=marker,tag=enmity.waystone_teleporter] if score @s enmity.waystone = @e[type=area_effect_cloud,tag=enmity.this,limit=1] enmity.waystone run kill @s
kill @s