tag @e remove hit
execute as @e[dx=0,type=!#main:not_mob,tag=!blocked] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 run function damage:damage
particle dust 0 0.6 1 1 ~ ~ ~ 0 0 0 0 1 normal
execute if entity @e[tag=!hit] positioned ^ ^ ^0.1 rotated ~ ~ if block ~ ~ ~ #main:raytrace_pass run function items:abilities/lightsaber/raycast