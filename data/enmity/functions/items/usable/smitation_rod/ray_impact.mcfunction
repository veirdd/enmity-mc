function enmity:utility/projectiles/sentries/sentry_counter
execute if score @s enmity.snt_ct >= @s enmity.max_snt run function enmity:utility/projectiles/sentries/remove_sentry
particle flash ~ ~1 ~ 0.2 0.2 0.2 0 5 force
playsound minecraft:item.trident.thunder neutral @a[distance=0..] ~ ~ ~ 2 2 0
scoreboard players remove @s enmity.mana 80
scoreboard players set @s enmity.cooldown 20
summon armor_stand ~ ~ ~ {Tags:["enmity.projectile","enmity.new","enmity.smitation_rod","enmity.sentry"],CustomName:'""',CustomNameVisible:1,DisabledSlots:2039583,ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:16156003}}},{id:"leather_leggings",Count:1,tag:{display:{color:16156003}}},{},{id:"copper_block",Count:1}],Silent:1,Invisible:1,Pose:{Head:[180f,0f,0f]}}
scoreboard players set @e[type=armor_stand,tag=enmity.new] enmity.age 59
scoreboard players operation @e[type=armor_stand,tag=enmity.new] enmity.player_id = @s enmity.player_id
scoreboard players operation @e[type=armor_stand,tag=enmity.new] enmity.dmg_bst += @s enmity.dmg_bst
tag @e[tag=enmity.new,tag=enmity.smitation_rod] remove enmity.new