#//RUN AS PLAYER WHEN ANIMATION NEEDED//#

## ALWAYS GONA BE Above 0 in ID's ~106
# Check for items tag amount
scoreboard objectives add .anim dummy
execute store result score .max .anim run data get entity @s SelectedItem.tag.anim
execute store result score .data .anim run data get entity @s SelectedItem.tag.CustomModelData
execute store result score .def .anim run data get entity @s SelectedItem.tag.defModelData

execute if entity @s[type=!player] store result score .max .anim run data get entity @s HandItems[0].tag.anim
execute if entity @s[type=!player] store result score .data .anim run data get entity @s HandItems[0].tag.CustomModelData
execute if entity @s[type=!player] store result score .def .anim run data get entity @s HandItems[0].tag.defModelData

#   - REMOVE ID + SETUP
scoreboard players operation .model .anim = .data .anim
scoreboard players remove .data .anim 2430000
scoreboard players operation .setMax .anim = .max .anim

#   - FIND WHAT NUMBER TO PUT INFRONT
scoreboard players operation .max .anim *= 100 st_num
execute if score .data .anim < .max .anim run scoreboard players add .model .anim 100
execute if score .data .anim > .max .anim run scoreboard players operation .model .anim = .def .anim

#   - SET MODEL WITH /Item
execute store result storage minecraft:guns model_data int 1 run scoreboard players get .model .anim
item modify entity @s weapon.mainhand main:set_modeldata

#   - RESET ANIMATION
scoreboard objectives remove .anim