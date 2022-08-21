kill @e[type=item,tag=enmity.saddle]
playsound entity.horse.saddle neutral @a[distance=0..] ~ ~ ~ 1 1 0
tag @s add enmity.saddled
tag @s add enmity.stop_harpy_saddling
scoreboard players reset @s enmity.age
summon pig ~ ~ ~ {Saddle:1b,Tags:["enmity.new","enmity.harpy_saddle","enmity.projectile","enmity.invulnerable"],Invulnerable:1,Silent:1,DeathLootTable:"minecraft:empty"}
effect give @e[type=pig,tag=enmity.new] invisibility 1000000 0 true
execute store result entity @e[type=pig,tag=enmity.new,limit=1] Attributes[{Name:"minecraft:generic.max_health"}].Base float 1 run attribute @s generic.max_health get
tag @e[type=pig,tag=enmity.harpy_saddle,limit=1] remove enmity.new