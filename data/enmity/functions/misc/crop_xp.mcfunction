kill @s
summon experience_orb ~ ~ ~ {Tags:["enmity.new"]}
execute store result entity @e[type=experience_orb,tag=enmity.new,limit=1] Value short 1 run data get entity @s Item.tag."Enmity.Xp" 1
tag @e[type=experience_orb,tag=enmity.new] remove enmity.new