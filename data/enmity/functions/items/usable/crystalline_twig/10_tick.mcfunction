particle dust_color_transition 0.5 0 1 1 1 0 0.5 ~ ~0.5 ~ 0.25 0.25 0.25 0.5 8
execute if score @s enmity.cooldown matches 4 if entity @e[type=#enmity:enemies,tag=!enmity.sentry,tag=!enmity.projectile,distance=..16,limit=1] run function enmity:items/usable/crystalline_twig/attack