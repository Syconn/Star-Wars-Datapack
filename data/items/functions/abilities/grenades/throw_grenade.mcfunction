#//RUN AS Player//#
execute at @s run summon armor_stand ~ ~0.2 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:0b,Marker:0b,Tags:["grenade","setup"]}
execute at @s rotated as @s run tp @e[type=armor_stand,tag=grenade,tag=setup,limit=1] ^ ^ ^.5 ~ ~
data modify entity @e[type=armor_stand,tag=grenade,tag=setup,limit=1] ArmorItems[3] set from entity @e[type=eye_of_ender,tag=eye,limit=1] Item

execute if score @s id matches 0 run scoreboard players add .id id 1
execute if score @s id matches 0 run scoreboard players operation @s id = .id id
execute at @s run scoreboard players operation @e[type=armor_stand,tag=setup,tag=grenade] id = @s id
tag @e remove setup