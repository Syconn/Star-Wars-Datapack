tag @s remove glow

execute as @e[type=marker,tag=glower,limit=1,sort=nearest] at @s run setblock ~ ~ ~ air
execute as @e[type=marker,tag=glower,limit=1,sort=nearest] run kill @s