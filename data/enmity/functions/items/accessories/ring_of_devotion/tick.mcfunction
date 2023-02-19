tp @e[type=experience_orb,distance=..16,scores={enmity.age=2..}] @s
execute as @e[type=!#enmity:not_living,type=!player,distance=..16,nbt={HurtTime:9s},tag=!enmity.target_dummy,limit=1] if predicate enmity:random/random_0.5 at @s run summon experience_orb ~ ~ ~ {Value:1}
scoreboard players add @e[type=experience_orb,distance=..16,limit=1] enmity.age 1