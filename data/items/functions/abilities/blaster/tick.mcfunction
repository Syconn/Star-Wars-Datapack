scoreboard objectives add .temp dummy
execute store result score cd .temp run data get entity @s SelectedItem.tag.cd
execute store result score mcd .temp run data get entity @s SelectedItem.tag.mcd

execute if score cd .temp = mcd .temp if score @s rc >= 1 num run function items:abilities/blaster/use

scoreboard objectives add .temp dummy
execute store result score cd .temp run data get entity @s SelectedItem.tag.cd
execute store result score mcd .temp run data get entity @s SelectedItem.tag.mcd
execute if score cd .temp < mcd .temp run scoreboard players add cd .temp 1
execute store result storage minecraft:guns cd int 1 run scoreboard players get cd .temp
item modify entity @s weapon.mainhand main:set_cd
scoreboard objectives remove .temp