#//EXECUTES AS MARKER AT BLOCK//#
setblock ~ ~ ~ air
kill @s[type=marker]

execute at @a[tag=glow,limit=1,sort=nearest] run summon marker ~ ~ ~ {Tags:["glower"]}
execute at @a[tag=glow,limit=1,sort=nearest] if block ~ ~ ~ air run setblock ~ ~ ~ light[level=8]