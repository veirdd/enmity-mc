particle minecraft:ash ~ ~1 ~ 0.3 0.3 0.3 0 5 normal
execute store result score @s enmity.math_c run data get entity @s Motion[0] 100
execute store result score @s enmity.math_d run data get entity @s Motion[2] 100
execute unless score @s enmity.math_c matches 0.. run scoreboard players operation @s enmity.math_c *= %const_-1 enmity.value
execute unless score @s enmity.math_d matches 0.. run scoreboard players operation @s enmity.math_d *= %const_-1 enmity.value
scoreboard players operation @s enmity.math_c += @s enmity.math_d
execute if score @s enmity.math_c matches 0 if entity @s[tag=enmity.moving] run scoreboard players remove @s enmity.phase 1
execute if score @s enmity.math_c matches 0 if entity @s[tag=enmity.moving] unless score @s enmity.phase matches 1.. run item replace entity @s armor.head with warped_fungus_on_a_stick{CustomModelData:1003,Unbreakable:1}
execute if score @s enmity.math_c matches 0 if entity @s[tag=enmity.moving] unless score @s enmity.phase matches 1.. run tag @s remove enmity.moving
execute unless score @s enmity.math_c matches 0 if entity @s[tag=!enmity.moving] run scoreboard players set @s enmity.phase 20
execute unless score @s enmity.math_c matches 0 if entity @s[tag=!enmity.moving] run item replace entity @s armor.head with warped_fungus_on_a_stick{CustomModelData:1004,Unbreakable:1}
execute unless score @s enmity.math_c matches 0 if entity @s[tag=!enmity.moving] run tag @s add enmity.moving
execute if entity @s[nbt={HurtTime:9s}] run function enmity:entities/mobs/wraith/on_harm