execute if score @s enmity.snt_ct matches 1 run tp @s ~ ~ ~ ~3 ~
execute if score @s enmity.snt_ct matches 2 run tp @s ~ ~ ~ ~2 ~
execute if score @s enmity.snt_ct matches 3.. run tp @s ~ ~ ~ ~1 ~
execute if score @s enmity.snt_ct matches 3.. run tp @e[tag=enmity.this_sentry,limit=3] ^-4 ^1 ^6.9282
execute if score @s enmity.snt_ct matches 3.. run tp @e[tag=enmity.this_sentry,limit=2] ^-4 ^1 ^-6.9282
execute if score @s enmity.snt_ct matches 3.. run tp @e[tag=enmity.this_sentry,limit=1] ^7 ^1 ^
execute if score @s enmity.snt_ct matches 2 run tp @e[tag=enmity.this_sentry,limit=2] ^-7 ^1 ^
execute if score @s enmity.snt_ct matches 1..2 run tp @e[tag=enmity.this_sentry,limit=1] ^6 ^1 ^