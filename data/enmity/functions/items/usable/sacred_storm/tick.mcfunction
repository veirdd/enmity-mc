data modify entity @s CustomNameVisible set value 0
data modify entity @s CustomNameVisible set value 1
execute at @s run tp @s ~ ~ ~ ~10 ~
particle smoke ^ ^0.3 ^1.5 0 1 0 0.2 0 force
particle smoke ^ ^0.3 ^-1.5 0 1 0 0.2 0 force
particle smoke ^-1.5 ^0.3 ^ 0 1 0 0.2 0 force
particle smoke ^1.5 ^0.3 ^ 0 1 0 0.2 0 force
particle dust 0 0 0 1.5 ^ ^0.3 ^1.5 0 0 0 0 1 force
particle dust 0 0 0 1.5 ^ ^0.3 ^-1.5 0 0 0 0 1 force
particle dust 0 0 0 1.5 ^-1.5 ^0.3 ^ 0 0 0 0 1 force
particle dust 0 0 0 1.5 ^1.5 ^0.3 ^ 0 0 0 0 1 force
particle dust 0.5 0 0.8 1.3 ^ ^0.3 ^0.8 0 0 0 0 1 force
particle dust 0.2 0.2 0.8 1.3 ^ ^0.3 ^-0.8 0 0 0 0 1 force