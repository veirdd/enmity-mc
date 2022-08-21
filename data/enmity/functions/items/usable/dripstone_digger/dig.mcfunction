execute unless block ~ ~ ~ #enmity:unbreakable unless block ~ ~ ~ #minecraft:needs_diamond_tool run setblock ~ ~ ~ air destroy
scoreboard players remove @p[tag=enmity.this] enmity.mana 30
scoreboard players set @p[tag=enmity.this] enmity.cooldown 12
particle crit ~ ~ ~ 0.3 0.3 0.3 0 10 force
playsound enmity:item.digger.dig neutral @a[distance=0..] ~ ~ ~ 1 1.4 0
kill @s