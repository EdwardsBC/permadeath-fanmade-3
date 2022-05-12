scoreboard players reset @s eb003
execute store result score eb003a eb003 run scoreboard players add eb003 eb003 10

title @a title {"text":" TORMENTA","color":"dark_red"}]
title @a subtitle [{"selector":"@s","color":"dark_red"},{"text":" Ha muerto","color":"red"}]
title @s times 10 80 10

tellraw @a [{"selector":"@s","color":"white"},{"text":" HA MUERTO","color ":"dark_red"}]
tellraw @a [{"text":"Y NOS DEJA DETRAS ","color":"white"},{"color":"yellow","score":{"name":"eb003","objective":"eb003"}},{"text":" MINUTOS DE TORMENTA","color":"white"}]

scoreboard players operation @a sonido = @a muerte

schedule function eb003:0/1 1t replace
