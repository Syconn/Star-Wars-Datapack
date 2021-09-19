execute as @e[type=armor_stand,tag=thrown,tag=!return] at @s run function items:abilities/throw_blade/move
execute as @e[type=armor_stand,tag=thrown,tag=return] at @s run function items:abilities/throw_blade/return

execute as @a if entity @s[scores={st_bc=1..,shift_time=..0},nbt={SelectedItem:{"id":"minecraft:warped_fungus_on_a_stick",tag:{lightsaber:1b,on:1b}}}] run function items:abilities/throw_blade/throw

execute as @e[type=armor_stand,tag=thrown] run scoreboard players add @s rotation 30
execute as @e[type=armor_stand,tag=thrown,tag=body] if score @s rotation matches 180.. run scoreboard players set @s rotation -180

execute as @e[type=armor_stand,tag=thrown] store result entity @s Pose.Head[1] float 1 run scoreboard players get @s rotation