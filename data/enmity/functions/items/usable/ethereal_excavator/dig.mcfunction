execute unless block ~ ~ ~ #minecraft:needs_diamond_tool run scoreboard players set @p[tag=enmity.this] enmity.cooldown 4
execute if block ~ ~ ~ #minecraft:needs_diamond_tool run scoreboard players set @p[tag=enmity.this] enmity.cooldown 12
execute unless block ~ ~ ~ #enmity:unbreakable run setblock ~ ~ ~ air destroy
scoreboard players remove @p[tag=enmity.this] enmity.mana 20
particle dust_color_transition 1 1 1 1 0.8 0.4 1 ~ ~ ~ 0.3 0.3 0.3 0 5 force
particle end_rod ~ ~ ~ 0.3 0.3 0.3 0 1 force
playsound enmity:item.digger.dig neutral @a[distance=0..] ~ ~ ~ 1 1.8 0
kill @s