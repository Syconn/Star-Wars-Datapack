#STOPS RAYCASTING
tag @s add hit

#BLOCK DETECTION
execute if score @s st_bc matches 1.. run tag @s add blocked

#DAMAGING
#   - REMOVE ABSORPTION BECUASE BREAKS SYSTEM
effect clear @s absorption

execute store result score .damage .damage run data get entity @a[tag=blocked,sort=nearest,limit=1] SelectedItem.tag.damage
execute if score .health .damage matches 1 run attribute @s[tag=!blocked] generic.max_health base set 1
execute if score .health .damage matches 2 run attribute @s[tag=!blocked] generic.max_health base set 2
execute if score .health .damage matches 3 run attribute @s[tag=!blocked] generic.max_health base set 3
execute if score .health .damage matches 4 run attribute @s[tag=!blocked] generic.max_health base set 4
execute if score .health .damage matches 5 run attribute @s[tag=!blocked] generic.max_health base set 5
execute if score .health .damage matches 6 run attribute @s[tag=!blocked] generic.max_health base set 6
execute if score .health .damage matches 7 run attribute @s[tag=!blocked] generic.max_health base set 7
execute if score .health .damage matches 8 run attribute @s[tag=!blocked] generic.max_health base set 8
execute if score .health .damage matches 9 run attribute @s[tag=!blocked] generic.max_health base set 9
execute if score .health .damage matches 10 run attribute @s[tag=!blocked] generic.max_health base set 10
execute if score .health .damage matches 11 run attribute @s[tag=!blocked] generic.max_health base set 11
execute if score .health .damage matches 12 run attribute @s[tag=!blocked] generic.max_health base set 12
execute if score .health .damage matches 13 run attribute @s[tag=!blocked] generic.max_health base set 13
execute if score .health .damage matches 14 run attribute @s[tag=!blocked] generic.max_health base set 14
execute if score .health .damage matches 15 run attribute @s[tag=!blocked] generic.max_health base set 15
execute if score .health .damage matches 16 run attribute @s[tag=!blocked] generic.max_health base set 16
execute if score .health .damage matches 17 run attribute @s[tag=!blocked] generic.max_health base set 17
execute if score .health .damage matches 18 run attribute @s[tag=!blocked] generic.max_health base set 18
execute if score .health .damage matches 19 run attribute @s[tag=!blocked] generic.max_health base set 19
execute if score .health .damage matches 20 run attribute @s[tag=!blocked] generic.max_health base set 20

execute if entity @s[tag=!blocked] run effect give @s wither 1 1 true

tag @s add reset
schedule function damage:reset 3t

execute if entity @s[tag=blocked] store result storage minecraft:lightsaber damage int 1 run scoreboard players get .health .damage
execute if entity @s[tag=blocked] run item modify entity @s weapon.mainhand main:set_damage
execute if entity @s[tag=blocked] as @s run function items:abilities/lightsaber/block
scoreboard objectives remove .damage