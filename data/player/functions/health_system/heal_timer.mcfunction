#//RAN AS PLAYER//#

#   - HEAL TIMER
execute if score @s st_health < .max st_health if score @s st_heal < .max st_heal run scoreboard players add @s st_heal 1

#   - CHECK IF CAN HEAL
execute if score @s st_heal = .max st_heal if score @s st_health < .max st_health run tag @s add heal

#   - HEALS
execute if entity @s[tag=heal] run scoreboard players add @s st_heal_cd 1
execute if entity @s[tag=heal] if score @s st_heal_cd >= .max st_heal_cd run scoreboard players add @s st_health 1
execute if entity @s[tag=heal] if score @s st_heal_cd >= .max st_heal_cd run scoreboard players set @s st_heal_cd 0

#   - RESETS
execute if entity @s[tag=heal] if score @s st_health >= .max st_health run scoreboard players set @s st_heal 0
execute if entity @s[tag=heal] if score @s st_health >= .max st_health run tag @s remove heal