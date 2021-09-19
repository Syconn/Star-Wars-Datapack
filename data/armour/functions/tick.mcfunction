execute as @a run function armour:amour/check

kill @e[type=item,nbt={Item:{tag:{stormtrooper:1b}}}]
execute as @a[nbt={Inventory:[{id:"minecraft:leather_helmet",Slot:103b,tag:{display:{color:16777215},stormtrooper:1b,equip:1b}}]}] run function armour:amour/trooper/equip

kill @e[type=item,nbt={Item:{tag:{clonetrooper:1b}}}]
execute as @a[nbt={Inventory:[{id:"minecraft:leather_helmet",Slot:103b,tag:{display:{color:16777215},clonetrooper:1b,equip:1b}}]}] run function armour:amour/clone/equip