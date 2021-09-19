#SETUP
scoreboard objectives add .temp dummy
tag @s add .temp
scoreboard players operation .id .temp = @s id
execute as @e[tag=!.temp,type=!armor_stand] if score @s id = .id .temp run tag @s add thrower

#MOVE
execute at @s facing entity @e[tag=thrower] feet run tp @s ^ ^ ^0.1
execute at @s facing entity @e[tag=thrower] feet run tp @s ^ ^ ^0.1
execute at @s facing entity @e[tag=thrower] feet run tp @s ^ ^ ^0.1
execute at @s facing entity @e[tag=thrower] feet run tp @s ^ ^ ^0.1
execute at @s facing entity @e[tag=thrower] feet run tp @s ^ ^ ^0.1

#HIT ENTITY DETECTION
execute as @e[distance=0...5,tag=!thrower,type=!#main:not_mob] run function items:abilities/throw_blade/damage

execute at @s facing entity @e[tag=thrower] feet run tp @s ^ ^ ^0.1
execute at @s facing entity @e[tag=thrower] feet run tp @s ^ ^ ^0.1
execute at @s facing entity @e[tag=thrower] feet run tp @s ^ ^ ^0.1
execute at @s facing entity @e[tag=thrower] feet run tp @s ^ ^ ^0.1
execute at @s facing entity @e[tag=thrower] feet run tp @s ^ ^ ^0.1

#HAS RETURNED
execute store result score .ax .temp run data get entity @s Pos[0]
execute store result score .ay .temp run data get entity @s Pos[1]
execute store result score .az .temp run data get entity @s Pos[2]
execute as @e[tag=thrower] store result score .px .temp run data get entity @s Pos[0]
execute as @e[tag=thrower] store result score .py .temp run data get entity @s Pos[1]
execute as @e[tag=thrower] store result score .pz .temp run data get entity @s Pos[2]

scoreboard players operation .dx .temp = .ax .temp
scoreboard players operation .dy .temp = .ay .temp
scoreboard players operation .dz .temp = .az .temp
scoreboard players operation .dx .temp -= .px .temp
scoreboard players operation .dy .temp -= .py .temp
scoreboard players operation .dz .temp -= .pz .temp
execute if score .dx .temp matches ..0 run scoreboard players operation .dx .temp *= -1 st_num
execute if score .dy .temp matches ..0 run scoreboard players operation .dy .temp *= -1 st_num
execute if score .dz .temp matches ..0 run scoreboard players operation .dz .temp *= -1 st_num
scoreboard players operation .distance .temp = .dx .temp
scoreboard players operation .distance .temp += .dy .temp
scoreboard players operation .distance .temp += .dz .temp
execute if score .distance .temp matches ..0 run scoreboard players operation .distance .temp *= -1 st_num
execute if score .distance .temp matches ..0 as @s run tag @s add kill

execute if entity @s[tag=kill] as @a[tag=thrower] unless entity @s[nbt=!{SelectedItem:{}}] at @s run summon item ~ ~ ~ {PickupDelay:1,Tags:["lightsaber"],Item:{"id":"minecraft:warped_fungus_on_a_stick",Count:1b}}
execute if entity @s[tag=kill] at @s as @e[type=item,tag=lightsaber,nbt={Item:{"id":"minecraft:warped_fungus_on_a_stick"}},limit=1,sort=nearest] run data modify entity @s Item set from entity @e[tag=.temp,limit=1] ArmorItems[3]
execute if entity @s[tag=kill] as @a[tag=thrower] if entity @s[nbt=!{SelectedItem:{}}] run item replace entity @s weapon.mainhand from entity @e[tag=kill,type=armor_stand,limit=1] armor.head

#RESET
tag @e remove .temp
tag @e remove thrower
execute if entity @s[tag=kill] run tag @e[tag=thrower] remove throwing
execute if entity @s[tag=kill] run kill @s
scoreboard objectives remove .temp