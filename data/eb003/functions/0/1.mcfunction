scoreboard players remove eb003a eb003 1
execute if score eb003a eb003 matches 1.. run schedule function eb003:0/1 600t replace
weather thunder 12000
title @a actionbar ["",{"text":"Quedan ","color":"gray"},{"score":{"name":"eb003a","objective":"eb003"},"color":"gray"},{"text":" minutos de tormenta","color":"gray"}]
