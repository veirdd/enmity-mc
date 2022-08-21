execute at @s anchored eyes run tp @s ~ ~ ~ facing entity @e[type=#enmity:alliance_susceptible,tag=!enmity.projectile,tag=!enmity.hit_by_alliance,distance=..8,limit=1,sort=nearest] eyes
function enmity:items/usable/alliance_rod/use
scoreboard players set @s enmity.cooldown 10