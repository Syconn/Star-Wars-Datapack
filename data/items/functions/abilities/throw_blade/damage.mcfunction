#BLOCK DETECTION
execute store result score .xHitRot .damage run data get entity @s Rotation[0]
execute store result score .xThrowerRot .damage run data get entity @e[tag=thrower,sort=nearest,limit=1] Rotation[0]
scoreboard players operation .xThrowerRot .damage *= -1 st_num

scoreboard players operation .xRotMin .damage = .xHitRot .damage
scoreboard players operation .xRotMax .damage = .xHitRot .damage

scoreboard players operation .xRotMin .damage -= 90 st_num
scoreboard players operation .xRotMax .damage += 90 st_num

execute if score .xThrowerRot .damage >= .xRotMin .damage if score .xThrowerRot .damage <= .xRotMax .damage if score @s st_bc matches 1.. if score @s shift_time matches 1.. run tag @s add blocked

#DAMAGING
#   - REMOVE ABSORPTION BECUASE BREAKS SYSTEM
effect clear @s absorption

scoreboard objectives add .damage dummy
scoreboard players set .damage .damage 8
execute store result score .health .damage run data get entity @s Health
scoreboard players operation .health .damage -= .damage .damage

#   - APPLIES TO PLAYER
#       - FIND ALTERNATIVE TO MULT BY 10
execute if entity @s[type=player,tag=!blocked] run scoreboard players operation @s st_damage += .damage .damage
execute if entity @s[type=player,tag=!blocked] run scoreboard players operation @s st_damage *= 10 st_num

execute if score .health .damage matches ..0 as @s run function damage:kill

execute if score .health .damage matches 1 run attribute @s[tag=!blocked,type=!player] generic.max_health base set 1
execute if score .health .damage matches 2 run attribute @s[tag=!blocked,type=!player] generic.max_health base set 2
execute if score .health .damage matches 3 run attribute @s[tag=!blocked,type=!player] generic.max_health base set 3
execute if score .health .damage matches 4 run attribute @s[tag=!blocked,type=!player] generic.max_health base set 4
execute if score .health .damage matches 5 run attribute @s[tag=!blocked,type=!player] generic.max_health base set 5
execute if score .health .damage matches 6 run attribute @s[tag=!blocked,type=!player] generic.max_health base set 6
execute if score .health .damage matches 7 run attribute @s[tag=!blocked,type=!player] generic.max_health base set 7
execute if score .health .damage matches 8 run attribute @s[tag=!blocked,type=!player] generic.max_health base set 8
execute if score .health .damage matches 9 run attribute @s[tag=!blocked,type=!player] generic.max_health base set 9
execute if score .health .damage matches 10 run attribute @s[tag=!blocked,type=!player] generic.max_health base set 10
execute if score .health .damage matches 11 run attribute @s[tag=!blocked,type=!player] generic.max_health base set 11
execute if score .health .damage matches 12 run attribute @s[tag=!blocked,type=!player] generic.max_health base set 12
execute if score .health .damage matches 13 run attribute @s[tag=!blocked,type=!player] generic.max_health base set 13
execute if score .health .damage matches 14 run attribute @s[tag=!blocked,type=!player] generic.max_health base set 14
execute if score .health .damage matches 15 run attribute @s[tag=!blocked,type=!player] generic.max_health base set 15
execute if score .health .damage matches 16 run attribute @s[tag=!blocked,type=!player] generic.max_health base set 16
execute if score .health .damage matches 17 run attribute @s[tag=!blocked,type=!player] generic.max_health base set 17
execute if score .health .damage matches 18 run attribute @s[tag=!blocked,type=!player] generic.max_health base set 18
execute if score .health .damage matches 19 run attribute @s[tag=!blocked,type=!player] generic.max_health base set 19
execute if score .health .damage matches 20 run attribute @s[tag=!blocked,type=!player] generic.max_health base set 20

execute if entity @s[tag=!blocked,type=!player] run effect give @s wither 1 1 true

tag @s add reset
schedule function damage:reset 3t

scoreboard objectives remove .damage