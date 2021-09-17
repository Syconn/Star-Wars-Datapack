function items:abilities/throw_blade/load
function items:abilities/grenades/load

scoreboard objectives add id dummy
scoreboard objectives add shift_time minecraft.custom:sneak_time
scoreboard players set .max shift_time 20
scoreboard players set .reset shift_time 10
scoreboard players set .max bc 10
scoreboard players set .reset bc 5

gamerule showDeathMessages false