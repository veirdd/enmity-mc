execute if score @s enmity.use matches 110 run item modify entity @s weapon.mainhand enmity:subjugator/push
execute if score @s enmity.use matches 108 run item modify entity @s weapon.mainhand enmity:subjugator/pull
execute if score @s enmity.use matches 109 run item modify entity @s weapon.mainhand enmity:subjugator/capture
execute if entity @s[nbt={SelectedItem:{tag:{Enmity.EternalItem:1}}}] run item modify entity @s weapon.mainhand enmity:eternal