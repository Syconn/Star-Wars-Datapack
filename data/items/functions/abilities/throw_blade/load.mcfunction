scoreboard objectives add rotation dummy
scoreboard objectives add st_thrown_cd dummy
scoreboard players set .max st_thrown_cd 1
execute as @e[tag=lightsaber] unless entity @s[scores={id=0..}] run scoreboard players set @s id 0
execute as @a unless entity @s[scores={id=0..}] run scoreboard players set @s id 0