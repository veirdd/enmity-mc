execute at @s anchored eyes run tp @s ~ ~ ~ facing entity @e[type=#enmity:enemies,tag=!enmity.sentry,tag=!enmity.projectile,limit=1,sort=nearest] eyes
function enmity:items/usable/silvan_wand/use
tag @s add enmity.attacking