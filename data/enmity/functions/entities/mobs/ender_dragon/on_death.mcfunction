execute if score %ender_dragon_defeated enmity.value matches 1 in the_end positioned 0 255 0 run summon marker ~ ~ ~ {Tags:["enmity.dragon_egg_placer"]}
tag @s add enmity.dead
schedule function enmity:entities/mobs/ender_dragon/on_death_scheduled 10s