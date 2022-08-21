kill @s
execute unless score @s enmity.math_b >= @s enmity.math_a run summon item ~ ~1 ~ {Invulnerable:1,Item:{id:"firework_star",Count:1b,tag:{Enmity.DeleteItem:1,CustomModelData:1001,display:{Name:'{"text":"Damage Indicator","italic":false}',Lore:['{"text":"Something went wrong...","italic":false,"color":"gray"}']}}},CustomName:'{"text":"☠","color":"red"}',CustomNameVisible:1,Tags:["enmity.new","enmity.projectile"],PickupDelay:9999,Age:5980,NoGravity:1,Motion:[0.0d,0.1d,0.0d]}
summon experience_orb ~ ~ ~ {Tags:["enmity.new"]}
execute store result entity @e[type=experience_orb,tag=enmity.new,limit=1] Value short 1 run data get entity @s Item.tag.Xp 1
tag @e[type=experience_orb,tag=enmity.new,limit=1] remove enmity.new