playsound entity.shulker_bullet.hit neutral @a[distance=0..] ~ ~ ~ 2 1 0
execute unless entity @s[type=area_effect_cloud] run particle crit ~ ~1 ~ 0.5 0.5 0.5 0 30 force
execute if entity @s[type=area_effect_cloud] run particle crit ~ ~ ~ 0.5 0.5 0.5 0 30 force
kill @s