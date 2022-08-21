execute unless block ~ ~ ~ #minecraft:needs_diamond_tool run scoreboard players set @p[tag=enmity.this] enmity.cooldown 8
execute if block ~ ~ ~ #minecraft:needs_diamond_tool run scoreboard players set @p[tag=enmity.this] enmity.cooldown 20
execute unless block ~ ~ ~ #enmity:unbreakable run setblock ~ ~ ~ air destroy
scoreboard players remove @p[tag=enmity.this] enmity.mana 20
particle dust_color_transition 0 0 0 1 0.4 0 0.3 ~ ~ ~ 0.3 0.3 0.3 0 10 force
playsound enmity:item.digger.dig neutral @a[distance=0..] ~ ~ ~ 1 1.6 0
kill @s