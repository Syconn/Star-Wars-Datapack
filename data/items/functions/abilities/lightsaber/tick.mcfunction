scoreboard players add .timer st_bc 1

execute as @a if score @s st_bc >= 1 st_num if score .timer st_bc = .reset st_bc run scoreboard players set @s st_bc 1
execute as @a if score @s st_bc = 1 st_num if score .timer st_bc = .max st_bc run scoreboard players set @a st_bc 0
execute if score .timer st_bc >= .max st_bc run scoreboard players set .timer st_bc 0

execute as @a if score @s st_bc matches 1.. if score @s shift_time matches 1.. run effect give @s slowness 1 1 true

execute as @a[tag=!glow,nbt={SelectedItem:{"id":"minecraft:warped_fungus_on_a_stick",tag:{lightsaber:1b}}}] run function items:abilities/glow/start
execute as @a[tag=glow,nbt=!{SelectedItem:{"id":"minecraft:warped_fungus_on_a_stick",tag:{lightsaber:1b}}}] run function items:abilities/glow/remove_glow
execute as @a at @s as @e[type=item,distance=..3,tag=!animated,nbt={Item:{"id":"minecraft:warped_fungus_on_a_stick",tag:{lightsaber:1b}}},sort=nearest,limit=1] run function items:abilities/animation/animate_saber