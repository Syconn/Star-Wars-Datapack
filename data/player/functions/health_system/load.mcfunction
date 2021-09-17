scoreboard objectives add st_damage minecraft.custom:damage_resisted
scoreboard objectives add st_health dummy
scoreboard objectives add st_heal dummy
scoreboard objectives add st_heal_cd dummy

scoreboard players set .max st_health 20
scoreboard players set .max st_heal_cd 20
scoreboard players set .max st_heal 200