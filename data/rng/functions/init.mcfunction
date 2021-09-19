scoreboard objectives add rng dummy

execute unless entity @e[type=marker,tag=4r1] run summon marker 20301 0 0 {Tags:["4r","4r1"],data:{rng:1}}
execute unless entity @e[type=marker,tag=4r2] run summon marker 20301 0 0 {Tags:["4r","4r2"],data:{rng:2}}
execute unless entity @e[type=marker,tag=4r3] run summon marker 20301 0 0 {Tags:["4r","4r3"],data:{rng:3}}
execute unless entity @e[type=marker,tag=4r4] run summon marker 20301 0 0 {Tags:["4r","4r4"],data:{rng:4}}

forceload add 20301 0