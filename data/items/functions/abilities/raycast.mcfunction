execute as @e[dx=0,type=!#main:not_mob,tag=!raycasting] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] if entity @a[tag=raycasting,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{bolt:1b}}}] positioned ~0.99 ~0.99 ~0.99 run function damage:damage
execute as @e[dx=0,type=!#main:not_mob,tag=!raycasting] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] if entity @e[type=!player,tag=raycasting,nbt={HandItems:[{id:"minecraft:carrot_on_a_stick",tag:{bolt:1b}},{}]}] positioned ~0.99 ~0.99 ~0.99 run function damage:damage

execute if entity @e[tag=raycasting,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{bolt:1b}}}] run particle dust 1.000 0.000 0.000 1 ~ ~ ~ 0 0 0 0 1 normal
execute if entity @e[tag=raycasting,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{rocket:1b}}}] run particle dust 0.302 0.302 0.302 1 ~ ~ ~ 0 0 0 0 1 normal
execute if entity @e[tag=raycasting,nbt={HandItems:[{id:"minecraft:carrot_on_a_stick",tag:{bolt:1b}}]}] run particle dust 1.000 0.000 0.000 1 ~ ~ ~ 0 0 0 0 1 normal
execute if entity @e[tag=raycasting,nbt={HandItems:[{id:"minecraft:carrot_on_a_stick",tag:{rocket:1b}}]}] run particle dust 0.302 0.302 0.302 1 ~ ~ ~ 0 0 0 0 1 normal
scoreboard objectives add .temp dummy

execute if entity @a[tag=raycasting,limit=1,sort=nearest] store result score dt .temp run data get entity @a[tag=raycasting,limit=1,sort=nearest] SelectedItem.tag.dt
execute if entity @e[type=!player,tag=raycasting,limit=1,sort=nearest] store result score dt .temp run data get entity @e[tag=raycasting,limit=1,sort=nearest] HandItems[0].tag.dt
scoreboard players remove dt .temp 1
execute store result storage minecraft:guns dt int 1 run scoreboard players get dt .temp
item modify entity @e[tag=raycasting,limit=1,sort=nearest] weapon.mainhand main:set_dt

execute if score dt .temp >= 0 num positioned ^ ^ ^0.5 rotated ~ ~ if block ~ ~ ~ #main:raytrace_pass run function items:abilities/raycast
execute if entity @e[tag=raycasting,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{rocket:1b}}}] positioned ^ ^ ^0.5 unless block ~ ~ ~ #main:raytrace_pass run function damage:explosion
execute if entity @e[tag=raycasting,nbt={HandItems:[{id:"minecraft:carrot_on_a_stick",tag:{rocket:1b}}]}] positioned ^ ^ ^0.5 unless block ~ ~ ~ #main:raytrace_pass run function damage:explosion

execute if entity @a[tag=raycasting,limit=1,sort=nearest] store result storage minecraft:guns dt int 1 run data get entity @a[tag=raycasting,limit=1,sort=nearest] SelectedItem.tag.range
execute if entity @e[type=!player,tag=raycasting,limit=1,sort=nearest] store result storage minecraft:guns dt int 1 run data get entity @e[tag=raycasting,limit=1,sort=nearest] HandItems[0].tag.range
item modify entity @e[tag=raycasting,limit=1,sort=nearest] weapon.mainhand main:set_dt
scoreboard objectives remove .temp