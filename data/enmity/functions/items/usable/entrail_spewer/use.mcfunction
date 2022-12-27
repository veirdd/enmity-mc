scoreboard players remove @s enmity.mana 10
scoreboard players add @s enmity.cooldown 4
function enmity:items/usable/entrail_spewer/summon_projectile
tag @s add enmity.entrail_spewer
execute if score @s enmity.math_a matches 1 run playsound entity.player.burp neutral @a[distance=0..] ~ ~ ~ 1 1.1 0
execute if score @s enmity.math_a matches 2 run playsound entity.player.burp neutral @a[distance=0..] ~ ~ ~ 1 1 0
execute if score @s enmity.math_a matches 3 run playsound entity.player.burp neutral @a[distance=0..] ~ ~ ~ 1 0.9 0