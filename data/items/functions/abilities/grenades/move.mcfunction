#GETS PLAYER
scoreboard objectives add .temp dummy
tag @s add .temp
scoreboard players operation .id .temp = @s id 
execute as @e[tag=!.temp,type=!armor_stand] if score @s id = .id .temp run tag @s add thrower

#MOVE
execute if entity @s[tag=!drop] at @s if block ^ ^1.5 ^.1 #main:raytrace_pass run tp @s ^ ^ ^0.1 ~ ~
execute if entity @s[tag=!drop] at @s if block ^ ^1.5 ^.1 #main:raytrace_pass run tp @s ^ ^ ^0.1 ~ ~
execute if entity @s[tag=!drop] at @s if block ^ ^1.5 ^.1 #main:raytrace_pass run tp @s ^ ^ ^0.1 ~ ~
execute if entity @s[tag=!drop] at @s if block ^ ^1.5 ^.1 #main:raytrace_pass run tp @s ^ ^ ^0.1 ~ ~
execute if entity @s[tag=!drop] at @s if block ^ ^1.5 ^.1 #main:raytrace_pass run tp @s ^ ^ ^0.1 ~ ~

execute if entity @s[tag=drop] at @s if block ^ ^1.5 ^.1 #main:raytrace_pass run tp @s ^ ^ ^0.1 ~ ~
execute if entity @s[tag=drop] at @s if block ^ ^1.5 ^.1 #main:raytrace_pass run tp @s ^ ^ ^0.1 ~ ~
execute if entity @s[tag=drop] at @s if block ^ ^1.5 ^.1 #main:raytrace_pass run tp @s ^ ^-0.1 ^0.1 ~ ~
execute if entity @s[tag=drop] at @s if block ^ ^1.5 ^.1 #main:raytrace_pass run tp @s ^ ^ ^0.1 ~ ~
execute if entity @s[tag=drop] at @s if block ^ ^1.5 ^.1 #main:raytrace_pass run tp @s ^ ^-0.1 ^0.1 ~ ~


#   - DISTANCE FROM PLAYER DETECTION
execute store result score .ax .temp run data get entity @s Pos[0]
execute store result score .ay .temp run data get entity @s Pos[1]
execute store result score .az .temp run data get entity @s Pos[2]
execute as @e[tag=thrower] store result score .px .temp run data get entity @s Pos[0]
execute as @e[tag=thrower] store result score .py .temp run data get entity @s Pos[1]
execute as @e[tag=thrower] store result score .pz .temp run data get entity @s Pos[2]

scoreboard players operation .dx .temp = .ax .temp
scoreboard players operation .dy .temp = .ay .temp
scoreboard players operation .dz .temp = .az .temp
scoreboard players operation .dx .temp -= .px .temp
scoreboard players operation .dy .temp -= .py .temp
scoreboard players operation .dz .temp -= .pz .temp
execute if score .dx .temp matches ..0 run scoreboard players operation .dx .temp *= -1 num
execute if score .dy .temp matches ..0 run scoreboard players operation .dy .temp *= -1 num
execute if score .dz .temp matches ..0 run scoreboard players operation .dz .temp *= -1 num
scoreboard players operation .distance .temp = .dx .temp
scoreboard players operation .distance .temp += .dy .temp
scoreboard players operation .distance .temp += .dz .temp
execute if score .distance .temp matches ..0 run scoreboard players operation .distance .temp *= -1 num
execute as @s if score .distance .temp matches 8.. run tag @s add drop
execute as @s if score .distance .temp matches 60.. run kill @s

# STOP DETECTIOM
#   - HIT BLOCK DETECTION
execute as @s unless block ^ ^1.5 ^.1 #main:raytrace_pass at @s run summon tnt ~ ~ ~
execute as @e[type=!#main:not_mob,tag=!thrower] unless block ^ ^1.5 ^.1 #main:raytrace_pass run function items:abilities/grenades/hit
execute as @s unless block ^ ^1.5 ^.1 #main:raytrace_pass run kill @s

execute if entity @s[tag=!drop] at @s if block ^ ^1.5 ^.1 #main:raytrace_pass run tp @s ^ ^ ^0.1 ~ ~
execute if entity @s[tag=!drop] at @s if block ^ ^1.5 ^.1 #main:raytrace_pass run tp @s ^ ^ ^0.1 ~ ~
execute if entity @s[tag=!drop] at @s if block ^ ^1.5 ^.1 #main:raytrace_pass run tp @s ^ ^ ^0.1 ~ ~
execute if entity @s[tag=!drop] at @s if block ^ ^1.5 ^.1 #main:raytrace_pass run tp @s ^ ^ ^0.1 ~ ~
execute if entity @s[tag=!drop] at @s if block ^ ^1.5 ^.1 #main:raytrace_pass run tp @s ^ ^ ^0.1 ~ ~

execute if entity @s[tag=drop] at @s if block ^ ^1.5 ^.1 #main:raytrace_pass run tp @s ^ ^ ^0.1 ~ ~
execute if entity @s[tag=drop] at @s if block ^ ^1.5 ^.1 #main:raytrace_pass run tp @s ^ ^-0.1 ^0.1 ~ ~
execute if entity @s[tag=drop] at @s if block ^ ^1.5 ^.1 #main:raytrace_pass run tp @s ^ ^-0.1 ^0.1 ~ ~
execute if entity @s[tag=drop] at @s if block ^ ^1.5 ^.1 #main:raytrace_pass run tp @s ^ ^ ^0.1 ~ ~
execute if entity @s[tag=drop] at @s if block ^ ^1.5 ^.1 #main:raytrace_pass run tp @s ^ ^-0.1 ^0.1 ~ ~

#RESET
tag @e remove thrower
tag @e remove .temp
#scoreboard objectives remove .temp