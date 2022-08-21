execute if entity @s[tag=!enmity.visibility_set] run function enmity:entities/mobs/phantom/set_visibility
execute if entity @s[nbt=!{Fire:-1s}] run function enmity:entities/mobs/phantom/appear
execute if entity @s[tag=enmity.visible,nbt={Fire:-1s}] unless entity @p[distance=..16,gamemode=!spectator] run function enmity:entities/mobs/phantom/disappear
execute if entity @s[tag=!enmity.visible] if entity @p[distance=..16,gamemode=!spectator] run function enmity:entities/mobs/phantom/appear