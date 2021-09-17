scoreboard players add .timer bc 1

execute as @a if score @s bc >= 1 num if score .timer bc = .reset bc run scoreboard players set @s bc 1
execute as @a if score @s bc = 1 num if score .timer bc = .max bc run scoreboard players set @a bc 0
execute if score .timer bc >= .max bc run scoreboard players set .timer bc 0

execute as @a if score @s bc matches 1.. if score @s shift_time matches 1.. run effect give @s slowness 1 1 true

execute as @a at @s as @e[type=item,distance=..3,tag=!animated,nbt={Item:{"id":"minecraft:warped_fungus_on_a_stick",tag:{lightsaber:1b}}},sort=nearest,limit=1] run function items:abilities/animation/animate_saber