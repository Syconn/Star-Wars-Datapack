function items:load
function player:health_system/load
function armour:load
function blocks:load
tellraw @a {"text": "Star Wars datapack ready", "color": "gold"}

scoreboard objectives add rc minecraft.used:carrot_on_a_stick
scoreboard objectives add bc minecraft.used:warped_fungus_on_a_stick
scoreboard objectives add math dummy

scoreboard objectives add num dummy
scoreboard players set -1 num -1
scoreboard players set 0 num 0
scoreboard players set 1 num 1
scoreboard players set 2 num 2
scoreboard players set 3 num 3
scoreboard players set 4 num 4
scoreboard players set 5 num 5
scoreboard players set 6 num 6
scoreboard players set 7 num 7
scoreboard players set 8 num 8
scoreboard players set 9 num 9
scoreboard players set 10 num 10
scoreboard players set 90 num 90
scoreboard players set 100 num 100
scoreboard players set 180 num 180