execute store result score @s st_armour run clear @s #main:armour_items{stormtrooper:1b} 0
execute if score @s st_armour > 4 st_num run clear @s #main:armour_items{stormtrooper:1b} 1
execute if score @s st_armour >= 4 st_num if entity @s[nbt=!{Inventory:[{id:"minecraft:player_head",Slot:103b,tag:{stormtrooper:1b}}]}] run function armour:amour/trooper/dequip
execute if entity @s[nbt={Inventory:[{id:"minecraft:player_head",Slot:103b,tag:{stormtrooper:1b}}]}] if entity @s[nbt=!{Inventory:[{id:"minecraft:leather_chestplate",Slot:102b,tag:{stormtrooper:1b}}]}] run function armour:amour/trooper/equip
execute if entity @s[nbt={Inventory:[{id:"minecraft:player_head",Slot:103b,tag:{stormtrooper:1b}}]}] if entity @s[nbt=!{Inventory:[{id:"minecraft:leather_leggings",Slot:101b,tag:{stormtrooper:1b}}]}] run function armour:amour/trooper/equip
execute if entity @s[nbt={Inventory:[{id:"minecraft:player_head",Slot:103b,tag:{stormtrooper:1b}}]}] if entity @s[nbt=!{Inventory:[{id:"minecraft:leather_boots",Slot:100b,tag:{stormtrooper:1b}}]}] run function armour:amour/trooper/equip
scoreboard players set @s st_armour 0


execute store result score @s st_armour run clear @s #main:armour_items{clonetrooper:1b} 0
execute if score @s st_armour > 4 st_num run clear @s #main:armour_items{clonetrooper:1b} 1
execute if score @s st_armour >= 4 st_num if entity @s[nbt=!{Inventory:[{id:"minecraft:player_head",Slot:103b,tag:{clonetrooper:1b}}]}] run function armour:amour/clone/dequip
execute if entity @s[nbt={Inventory:[{id:"minecraft:player_head",Slot:103b,tag:{clonetrooper:1b}}]}] if entity @s[nbt=!{Inventory:[{id:"minecraft:leather_chestplate",Slot:102b,tag:{clonetrooper:1b}}]}] run function armour:amour/clone/equip
execute if entity @s[nbt={Inventory:[{id:"minecraft:player_head",Slot:103b,tag:{clonetrooper:1b}}]}] if entity @s[nbt=!{Inventory:[{id:"minecraft:leather_leggings",Slot:101b,tag:{clonetrooper:1b}}]}] run function armour:amour/clone/equip
execute if entity @s[nbt={Inventory:[{id:"minecraft:player_head",Slot:103b,tag:{clonetrooper:1b}}]}] if entity @s[nbt=!{Inventory:[{id:"minecraft:leather_boots",Slot:100b,tag:{clonetrooper:1b}}]}] run function armour:amour/clone/equip
scoreboard players set @s st_armour 0
