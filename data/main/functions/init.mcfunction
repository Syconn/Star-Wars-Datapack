function items:load
function player:health_system/load
function armour:load
function blocks:load
function rng:init
tellraw @a {"text": "Star Wars datapack ready", "color": "gold"}

scoreboard objectives add st_rc minecraft.used:carrot_on_a_stick
scoreboard objectives add st_bc minecraft.used:warped_fungus_on_a_stick
scoreboard objectives add math dummy

scoreboard objectives add st_num dummy
scoreboard players set -1 st_num -1
scoreboard players set 0 st_num 0
scoreboard players set 1 st_num 1
scoreboard players set 2 st_num 2
scoreboard players set 3 st_num 3
scoreboard players set 4 st_num 4
scoreboard players set 5 st_num 5
scoreboard players set 6 st_num 6
scoreboard players set 7 st_num 7
scoreboard players set 8 st_num 8
scoreboard players set 9 st_num 9
scoreboard players set 10 st_num 10
scoreboard players set 25 st_num 25
scoreboard players set 90 st_num 90
scoreboard players set 100 st_num 100
scoreboard players set 180 st_num 180