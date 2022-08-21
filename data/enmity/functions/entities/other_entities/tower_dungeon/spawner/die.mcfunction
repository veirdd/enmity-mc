execute if block ~ ~1 ~ chest run playsound block.chest.locked block @a[distance=0..] ~ ~1 ~ 1 1 0
execute if block ~ ~ ~ spawner run setblock ~ ~ ~ air destroy
data merge block ~ ~1 ~ {Lock:""}
kill @s