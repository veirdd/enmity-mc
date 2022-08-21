scoreboard players add @s enmity.raycast 1
execute if block ~ ~-1 ~ bedrock run scoreboard players set @s enmity.raycast 0
execute if score @s enmity.raycast matches 256.. run scoreboard players set @s enmity.raycast 0
execute if score @s enmity.raycast matches 0 run setblock ~ ~ ~ dragon_egg replace
execute if block ~ ~ ~ dragon_egg run kill @s
execute if score @s enmity.raycast matches 1.. positioned ~ ~-1 ~ run function enmity:entities/mobs/ender_dragon/egg_raycast