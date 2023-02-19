effect clear @s darkness
effect clear @s mining_fatigue
effect clear @s nausea
effect clear @s poison
effect clear @s slowness
effect clear @s weakness
effect clear @s wither
execute store result score @s enmity.rotation run data get entity @s Rotation[1] 1
execute if score @s enmity.rotation matches ..-89 if data entity @s {FallFlying:1b} run effect give @s levitation 1 0 true