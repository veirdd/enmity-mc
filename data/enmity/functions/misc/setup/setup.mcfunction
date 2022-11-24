function enmity:misc/setup/scoreboard
summon marker ~ ~ ~ {Tags:["enmity.setup"]}
scoreboard players set %difficulty enmity.value 0
scoreboard players set %hardmode enmity.value 0
scoreboard players set %giant_defeated enmity.value 0
scoreboard players set %elder_guardian_defeated enmity.value 0
scoreboard players set %ender_dragon_defeated enmity.value 0
execute unless score %id enmity.player_id matches 0.. run scoreboard players set %id enmity.player_id 0
gamerule reducedDebugInfo true
bossbar add enmity.elder_guardian {"text":"Elder Guardian"}
bossbar set enmity.elder_guardian color blue
bossbar add enmity.giant {"text":"Giant"}
bossbar set enmity.giant color green
team add enmity.black
team modify enmity.black color black