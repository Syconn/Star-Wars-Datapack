#//RAN AS SERVER//#

#SETS PLAYER VALUES
execute as @a run effect give @s resistance 3 255 true
execute as @a[gamemode=!creative] run title @s actionbar [{"score":{"name":"*","objective":"st_health"},"color":"dark_red"},{"text":"❤ / ","color":"dark_red"},{"score":{"name":".max","objective":"st_health"},"color":"dark_red"},{"text":"❤","color":"dark_red"}]

#SCORE CHECKS
execute as @a as @s[scores={st_damage=1..}] run function player:health_system/calculate
execute as @a run function player:health_system/heal_timer
#execute as @a unless score @s st_health matches 0.. run scoreboard players operation @s st_health = .max st_health