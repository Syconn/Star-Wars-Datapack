#LIGHTSABERS
function items:abilities/lightsaber/tick
function items:abilities/throw_blade/tick
function items:abilities/grenades/tick
function items:update_id

#GUNS
function items:abilities/blaster/sneak
execute as @a if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1b}}}] run function items:abilities/blaster/tick
execute as @a if entity @s[scores={shift_time=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{sniper:1b}}}] run effect give @s slowness 1 255 true