item replace entity @s[gamemode=!creative,gamemode=!spectator] weapon.mainhand with air
summon zombie ~ ~0.5 ~ {PersistenceRequired:1,Silent:1,Tags:["enmity.target_dummy","enmity.new","enmity.custom_mob"],Attributes:[{Name:"generic.max_health",Base:1024},{Name:"generic.follow_range",Base:0}],Health:1024,DeathLootTable:"minecraft:empty"}
summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1,ArmorItems:[{},{},{},{id:"warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:1011}}],DisabledSlots:2039583,Attributes:[{Name:"generic.knockback_resistance",Base:1}],Tags:["enmity.target_dummy","enmity.new","enmity.stop_dummies"]}
effect give @e[type=zombie,tag=enmity.new] invisibility 1000000 0 true
effect give @e[type=zombie,tag=enmity.new] weakness 1000000 0 true
scoreboard players set @e[type=armor_stand,tag=enmity.new] enmity.math_f 0
scoreboard players set @e[type=armor_stand,tag=enmity.new] enmity.age 0
scoreboard players set @e[type=zombie,tag=enmity.new] enmity.age 0
tag @e[type=#enmity:target_dummy,tag=enmity.new] remove enmity.new