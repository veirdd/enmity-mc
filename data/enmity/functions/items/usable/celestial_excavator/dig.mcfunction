execute unless block ~ ~ ~ #enmity:unbreakable run setblock ~ ~ ~ air destroy
execute as @p[tag=enmity.this] run scoreboard players operation @s enmity.math_a = @s enmity.max_mana
scoreboard players operation @p[tag=enmity.this] enmity.math_a -= %const_20 enmity.value
execute as @p[tag=enmity.this] if score @s enmity.mana >= @s enmity.math_a run scoreboard players remove @s enmity.mana 20
scoreboard players remove @p[tag=enmity.this] enmity.mana 10
particle dust_color_transition 0 0 0 1 0.5 0 1 ~ ~ ~ 0.3 0.3 0.3 0 5 force
particle smoke ~ ~ ~ 0.3 0.3 0.3 0 5 force
playsound enmity:item.digger.dig neutral @a[distance=0..] ~ ~ ~ 1 2 0
kill @s