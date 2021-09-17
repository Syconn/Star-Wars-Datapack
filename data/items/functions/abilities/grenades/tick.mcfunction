execute as @a[scores={throw_eye=1..}] at @s as @e[type=eye_of_ender,sort=nearest] if entity @s[nbt={Item:{"id":"minecraft:ender_eye",tag:{grenade:1b}}}] run tag @s add eye
execute as @a[scores={throw_eye=1..}] at @s as @e[type=eye_of_ender,sort=nearest] if entity @s[nbt={Item:{"id":"minecraft:ender_eye",tag:{grenade:1b}}}] at @s as @a[scores={throw_eye=1..},sort=nearest,limit=1] run function items:abilities/grenades/throw_grenade
execute as @a[scores={throw_eye=1..}] at @s as @e[type=eye_of_ender,sort=nearest] if entity @s[nbt={Item:{"id":"minecraft:ender_eye",tag:{grenade:1b}}}] run kill @s

execute as @e[type=armor_stand,tag=grenade] at @s run function items:abilities/grenades/move