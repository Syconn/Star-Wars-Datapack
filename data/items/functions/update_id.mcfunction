scoreboard players set .check id 0
execute as @e[scores={id=0..}] if score @s id = .id id run scoreboard players set .check id 1

execute unless score .check id matches 1 run scoreboard players remove .id id 1