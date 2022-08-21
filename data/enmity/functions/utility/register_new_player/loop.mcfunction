scoreboard players add %id enmity.math_a 1
execute if score %id enmity.math_a > %id enmity.player_id run scoreboard players set %id enmity.math_b 1
execute if score %id enmity.math_a > %id enmity.player_id run scoreboard players operation @s enmity.player_id = %id enmity.math_a
execute if score %id enmity.math_a > %id enmity.player_id run scoreboard players operation %id enmity.player_id = %id enmity.math_a
execute if score %id enmity.math_b matches 0 run function enmity:utility/register_new_player/loop