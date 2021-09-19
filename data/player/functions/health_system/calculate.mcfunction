#//RAN AS PLAYER//#
scoreboard players set def st_damage 0
scoreboard players set chance st_damage 0
execute store result score def st_damage run data get entity @s Inventory[{Slot:102b}].tag.def
scoreboard players operation def st_damage /= 5 st_num

scoreboard players operation @s st_damage /= 10 st_num
scoreboard players operation chance st_damage = @s st_chance
scoreboard players operation cal_def st_damage = @s st_defense
scoreboard players operation cal_def st_damage /= 7 st_num
scoreboard players operation chance st_damage /= 25 st_num

scoreboard players set type rng 4
function rng:rng
scoreboard players operation rng st_damage = out rng
execute if score chance st_damage >= out rng run scoreboard players operation @s st_damage -= cal_def st_damage

function rng:rng
scoreboard players operation rng st_damage = out rng
scoreboard players remove rng st_damage 2
execute if score rng st_damage = -1 st_num run scoreboard players set rng st_damage 0

execute if score rng st_damage matches 1.. run scoreboard players operation @s st_damage -= def st_damage

#LOWER HEALTH
execute if score @s st_damage matches ..0 run scoreboard players set @s st_damage 0
scoreboard players operation @s[gamemode=!creative] st_health -= @s st_damage
scoreboard players operation damageTaken st_damage = @s st_damage
scoreboard players set @s st_damage 0
scoreboard players set @s st_heal 0
tag @s remove heal

#CHECK HEALTH
execute if score @s st_health <= 0 st_num run tag @s add kill
execute if entity @s[tag=kill] run scoreboard players operation @s st_health = .max st_health
execute if entity @s[tag=kill] run kill @s
tag @s remove kill