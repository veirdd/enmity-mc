# Items

execute as @a[tag=enmity.accessories.any.strength] run function enmity:misc/item_branch/400_tick/strength

#

execute as @e[type=marker,tag=enmity.sentry_anchor] run function enmity:misc/projectiles/sentries/sentry_anchor/cleanup
execute unless entity @e[type=giant,tag=enmity.boss] run bossbar set enmity.giant players
execute unless entity @e[type=elder_guardian,tag=enmity.boss] run bossbar set enmity.elder_guardian players


schedule function enmity:400_tick 400t