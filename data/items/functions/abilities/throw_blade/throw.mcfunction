execute at @s run summon armor_stand ~ ~0.2 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Marker:1b,Tags:["thrown","setup"],Pose:{Head:[90f,0f,0f]}}
execute at @s rotated as @s run tp @e[type=armor_stand,tag=setup,limit=1] ^ ^ ^.5 ~ ~
execute if entity @s[type=!player] run data modify entity @e[type=armor_stand,tag=thrown,tag=setup,limit=1] ArmorItems[3] set from entity @s HandItems[0]
execute if entity @s[type=player] run data modify entity @e[type=armor_stand,tag=thrown,tag=setup,limit=1] ArmorItems[3] set from entity @s SelectedItem

execute if score @s id matches 0 run scoreboard players add .id id 1
execute if score @s id matches 0 run scoreboard players operation @s id = .id id
execute at @s run scoreboard players operation @e[type=armor_stand,tag=setup,tag=thrown] id = @s id

item replace entity @s[type=player] weapon.mainhand with air
tag @s add st_thrown_cd
tag @e remove setup
scoreboard players set @s st_thrown_cd 0
tag @s add throwing