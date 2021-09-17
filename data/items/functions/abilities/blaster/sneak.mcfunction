scoreboard players add .timer shift_time 1

execute as @a if score @s shift_time >= 1 num if score .timer shift_time = .reset shift_time run scoreboard players set @s shift_time 1
execute as @a if score @s shift_time = 1 num if score .timer shift_time = .max shift_time run scoreboard players set @a shift_time 0
execute if score .timer shift_time >= .max shift_time run scoreboard players set .timer shift_time 0