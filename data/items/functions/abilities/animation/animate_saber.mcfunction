#//RUN AS ENTITY ITEM WHEN ANIMATION NEEDED//#

## ALWAYS GONA BE Above 0 in ID's ~106
# Check for items tag amount
scoreboard objectives add .anim dummy
execute store result score .max .anim run data get entity @s Item.tag.anim
execute store result score .data .anim run data get entity @s Item.tag.CustomModelData
execute store result score .def .anim run data get entity @s Item.tag.defModelData

#   - REMOVE ID + SETUP
scoreboard players operation .model .anim = .data .anim
scoreboard players remove .data .anim 2431000
scoreboard players operation .setMax .anim = .max .anim

#   - FIND WHAT NUMBER TO PUT INFRONT
scoreboard players operation .max .anim *= 100 num
execute if score .data .anim < .max .anim run scoreboard players add .model .anim 100
execute if score .data .anim > .max .anim run scoreboard players operation .model .anim = .def .anim

#   - SET MODEL WITH /Item
execute store result entity @s Item.tag.CustomModelData int 1 run scoreboard players get .model .anim
execute if score .data .anim < .max .anim run data modify entity @e[type=minecraft:item,sort=nearest,limit=1] Item.tag.on set value 0b
execute if score .data .anim > .max .anim run data modify entity @e[type=minecraft:item,sort=nearest,limit=1] Item.tag.on set value 1b
data modify entity @s PickupDelay set value 0
tp @s ~ ~ ~

# #   - RESET ANIMATION
tag @s add animated
scoreboard objectives remove .anim