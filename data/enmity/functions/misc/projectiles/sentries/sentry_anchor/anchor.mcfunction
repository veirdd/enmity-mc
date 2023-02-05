execute if score @s enmity.snt_ct matches 1 run tp @s ~ ~ ~ ~3 ~
execute if score @s enmity.snt_ct matches 2 run tp @s ~ ~ ~ ~2 ~
execute if score @s enmity.snt_ct matches 3.. run tp @s ~ ~ ~ ~1 ~
execute if score @s enmity.snt_ct matches 3.. run tp @e[type=#enmity:used_as_sentries,tag=enmity.this_sentry,limit=3] ^-3.5 ^1 ^6.06218
execute if score @s enmity.snt_ct matches 3.. run tp @e[type=#enmity:used_as_sentries,tag=enmity.this_sentry,limit=2] ^-3.5 ^1 ^-6.06218
execute if score @s enmity.snt_ct matches 3.. run tp @e[type=#enmity:used_as_sentries,tag=enmity.this_sentry,limit=1] ^7 ^1 ^
execute if score @s enmity.snt_ct matches 2 run tp @e[type=#enmity:used_as_sentries,tag=enmity.this_sentry,limit=2] ^-5.5 ^1 ^
execute if score @s enmity.snt_ct matches 2 run tp @e[type=#enmity:used_as_sentries,tag=enmity.this_sentry,limit=1] ^5.5 ^1 ^
execute if score @s enmity.snt_ct matches 1 run tp @e[type=#enmity:used_as_sentries,tag=enmity.this_sentry,limit=1] ^4 ^1 ^
execute as @e[tag=enmity.this_sentry,limit=3] if entity @s[type=armor_stand] at @s run tp ~ ~-1.5 ~