execute if entity @s[nbt={Item:{tag:{CustomModelData:1}}}] run function enmity:blocks/setblock/waystone
execute if entity @s[nbt={Item:{tag:{CustomModelData:3}}}] run function enmity:blocks/setblock/heating_coil
execute if entity @s[nbt={Item:{tag:{CustomModelData:5}}}] run function enmity:blocks/setblock/cooling_coil
tag @s remove enmity.block_unset