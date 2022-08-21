execute store result entity @e[type=marker,limit=1,tag=enmity.elder_anchor] Rotation[0] float 1 run loot spawn ~ -1000 ~ loot enmity:random_360
execute as @e[type=marker,limit=1,tag=enmity.elder_anchor] at @s run summon marker ^ ^5 ^4 {Tags:["enmity.elder_bolt_anchor","enmity.projectile"]}
function enmity:entities/mobs/elder_guardian/projectiles/bolt/summon