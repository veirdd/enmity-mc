bossbar set enmity.elder_guardian max 800
attribute @s generic.max_health modifier add 0-0-0-0-0 "0" 720 add
data merge entity @s[tag=!enmity.boss] {DeathLootTable:"minecraft:empty"}
data merge entity @s[tag=enmity.boss] {Silent:1,NoAI:1}
scoreboard players set @s enmity.dmg_rdc 5
scoreboard players set @s enmity.dmg_rdc_mtp 50
scoreboard players set @s enmity.math_a 0
scoreboard players set @s enmity.cooldown 0
scoreboard players set @s enmity.dmg 15
effect give @s resistance 1000000 1 true
execute at @e[type=elder_guardian,tag=enmity.boss] run scoreboard players add @s enmity.math_a 1
execute if score @s enmity.math_a matches 2.. run function enmity:entities/mobs/elder_guardian/despawning/despawn_alive