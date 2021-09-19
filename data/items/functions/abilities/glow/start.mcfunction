tag @s add glow

execute at @s run summon marker ~ ~ ~ {Tags:["glower"]}
execute at @s if block ~ ~ ~ air run setblock ~ ~ ~ light[level=8]