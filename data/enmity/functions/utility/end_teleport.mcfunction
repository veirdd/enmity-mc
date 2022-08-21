advancement revoke @s only enmity:other/go_to_end
execute unless score %ender_dragon_defeated enmity.value matches 1.. in the_end run spreadplayers 1000 0 0 100 false @s
execute unless score %ender_dragon_defeated enmity.value matches 1.. at @s run tp @s ~ ~ ~ facing 1000 70 0
execute unless score %ender_dragon_defeated enmity.value matches 1.. in the_end run summon marker 1000 70 0 {Tags:["enmity.end_gateway_placer"]}