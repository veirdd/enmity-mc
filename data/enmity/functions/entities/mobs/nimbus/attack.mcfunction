execute at @s anchored eyes run tp @s ~ ~ ~ facing entity @p[distance=..10,gamemode=!creative,gamemode=!spectator] eyes
execute if score %hardmode enmity.value matches 1 at @s anchored eyes run function enmity:items/usable/lightning_surge/use
execute if score %hardmode enmity.value matches 1 run playsound entity.lightning_bolt.thunder hostile @a[distance=0..] ~ ~ ~ 2 2 0
execute if score %hardmode enmity.value matches 0 at @s anchored eyes run function enmity:items/usable/gust_caster/use
execute if score %hardmode enmity.value matches 0 run playsound entity.ender_dragon.flap neutral @a[distance=0..] ~ ~ ~ 2 0 0
execute if score %hardmode enmity.value matches 0 run playsound entity.leash_knot.break neutral @a[distance=0..] ~ ~ ~ 2 0 0
execute if score %hardmode enmity.value matches 0 run playsound entity.leash_knot.break neutral @a[distance=0..] ~ ~ ~ 2 0 0
execute if score %hardmode enmity.value matches 0 run playsound entity.leash_knot.break neutral @a[distance=0..] ~ ~ ~ 2 0 0
scoreboard players set @s enmity.cooldown 5
execute if score %difficulty enmity.value matches 1 run scoreboard players add @s enmity.cooldown 4