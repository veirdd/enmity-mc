execute if score %hardmode enmity.value matches 0 if score %difficulty enmity.value matches 1 at @p[gamemode=!creative,gamemode=!spectator] run summon minecraft:creeper ~ ~1.5 ~ {ExplosionRadius:1,Fuse:0,Tags:["enmity.modified"],Fire:20s,Silent:1}
execute if score %hardmode enmity.value matches 0 if score %difficulty enmity.value matches 2 at @p[gamemode=!creative,gamemode=!spectator] run summon minecraft:creeper ~ ~1 ~ {ExplosionRadius:1,Fuse:0,Tags:["enmity.modified"],Fire:20s,Silent:1}
execute if score %hardmode enmity.value matches 1 if score %difficulty enmity.value matches 1 at @p[gamemode=!creative,gamemode=!spectator] run summon minecraft:creeper ~ ~0.6 ~ {ExplosionRadius:1,Fuse:0,Tags:["enmity.modified"],Fire:20s,Silent:1}
execute if score %hardmode enmity.value matches 1 if score %difficulty enmity.value matches 2 at @p[gamemode=!creative,gamemode=!spectator] run summon minecraft:creeper ~ ~ ~ {ExplosionRadius:1,Fuse:0,Tags:["enmity.modified"],Fire:20s,Silent:1}
execute run particle lava ~ ~ ~ 0.5 0.5 0.5 0 50 force
execute run particle flame ~ ~ ~ 0.3 0.8 0.3 0 100 force
data merge entity @s {DeathLootTable:"enmity:entities/hellbat_exploding"}
kill @s