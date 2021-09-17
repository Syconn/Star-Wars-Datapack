scoreboard players set @s rc 0

execute if entity @s[type=player] run data modify storage minecraft:guns cd set value 1
execute if entity @s[type=player] run item modify entity @s weapon.mainhand main:set_cd

tag @s add raycasting
execute at @s run playsound block.amethyst_cluster.break player @s ~ ~ ~ 2 1
execute at @s anchored eyes positioned ^ ^ ^ run function items:abilities/raycast
execute as @s run function items:abilities/animation/animate
tag @e remove raycasting