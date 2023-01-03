tag @s add enmity.this
execute as @a if score @s enmity.player_id = @e[type=marker,tag=enmity.this,limit=1] enmity.player_id if entity @s[tag=enmity.accessories.warped_glyph] run tag @s add enmity.this
execute unless entity @p[tag=enmity.this] run kill @s
tag @a[tag=enmity.this] remove enmity.this
tag @s remove enmity.this