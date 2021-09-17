#//RAN AS PLAYER//#

#LOWER HEALTH
scoreboard players operation @s st_damage /= 10 num
scoreboard players operation @s[gamemode=!creative] st_health -= @s st_damage
scoreboard players set @s st_damage 0
scoreboard players set @s st_heal 0
tag @s remove heal

#CHECK HEALTH
execute if score @s st_health <= 0 num run tag @s add kill
execute if entity @s[tag=kill] run scoreboard players operation @s st_health = .max st_health
execute if entity @s[tag=kill] run kill @s
tag @s remove kill