playsound block.honey_block.break neutral @a[distance=0..] ~ ~ ~ 2 2 0
playsound block.honey_block.break neutral @a[distance=0..] ~ ~ ~ 1.5 1.5 0
particle block_marker cobweb ^ ^ ^-0.3 0 0 0 0 1 force
summon marker ^ ^ ^-0.3 {Tags:["enmity.cobweb","enmity.projectile"]}
kill @s