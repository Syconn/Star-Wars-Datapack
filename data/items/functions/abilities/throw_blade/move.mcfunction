#GETS PLAYER
scoreboard objectives add .temp dummy
tag @s add .temp
scoreboard players operation .id .temp = @s id 
execute as @e[tag=!.temp,type=!armor_stand] if score @s id = .id .temp run tag @s add thrower

#MOVE
execute at @s if block ^ ^1.5 ^.1 #main:raytrace_pass run tp @s ^ ^ ^0.1 ~ ~
execute at @s if block ^ ^1.5 ^.1 #main:raytrace_pass run tp @s ^ ^ ^0.1 ~ ~
execute at @s if block ^ ^1.5 ^.1 #main:raytrace_pass run tp @s ^ ^ ^0.1 ~ ~
execute at @s if block ^ ^1.5 ^.1 #main:raytrace_pass run tp @s ^ ^ ^0.1 ~ ~
execute at @s if block ^ ^1.5 ^.1 #main:raytrace_pass run tp @s ^ ^ ^0.1 ~ ~

# STOP DETECTIOM
#   - HIT ENTITY DETECTION
execute as @e[distance=0...5,tag=!thrower,type=!#main:not_mob] run function items:abilities/throw_blade/damage


execute at @s if block ^ ^1.5 ^.1 #main:raytrace_pass run tp @s ^ ^ ^0.1 ~ ~
execute at @s if block ^ ^1.5 ^.1 #main:raytrace_pass run tp @s ^ ^ ^0.1 ~ ~
execute at @s if block ^ ^1.5 ^.1 #main:raytrace_pass run tp @s ^ ^ ^0.1 ~ ~
execute at @s if block ^ ^1.5 ^.1 #main:raytrace_pass run tp @s ^ ^ ^0.1 ~ ~
execute at @s if block ^ ^1.5 ^.1 #main:raytrace_pass run tp @s ^ ^ ^0.1 ~ ~

#   - HIT BLOCK DETECTION
execute as @s unless block ^ ^1.5 ^.1 #main:raytrace_pass run tag @s add return

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
execute if score .dx .temp matches ..0 run scoreboard players operation .dx .temp *= -1 st_num
execute if score .dy .temp matches ..0 run scoreboard players operation .dy .temp *= -1 st_num
execute if score .dz .temp matches ..0 run scoreboard players operation .dz .temp *= -1 st_num
scoreboard players operation .distance .temp = .dx .temp
scoreboard players operation .distance .temp += .dy .temp
scoreboard players operation .distance .temp += .dz .temp
execute if score .distance .temp matches ..0 run scoreboard players operation .distance .temp *= -1 st_num
execute as @s if score .distance .temp matches 20.. run tag @s add return

#RESET
tag @e remove thrower
tag @e remove .temp
#scoreboard objectives remove .temp