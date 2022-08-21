particle block oak_planks ~ ~1 ~ 0.2 0.8 0.2 0 10 normal
playsound entity.armor_stand.break neutral @a[distance=0..] ~ ~ ~ 1 1 0
loot spawn ~ ~ ~ loot enmity:entities/target_dummy
tp @s ~ -1000 ~
kill @s