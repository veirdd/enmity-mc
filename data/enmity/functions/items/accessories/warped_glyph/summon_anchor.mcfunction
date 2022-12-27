summon marker ~ ~ ~ {Tags:["enmity.warped_glyph","enmity.projectile","enmity.new"]}
scoreboard players operation @e[type=marker,tag=enmity.new] enmity.player_id = @s enmity.player_id
tag @e[type=marker,tag=enmity.new] remove enmity.new