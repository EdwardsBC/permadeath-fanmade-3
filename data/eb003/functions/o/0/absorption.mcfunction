effect give @a[tag=donador] minecraft:absorption 999999 0

scoreboard players reset @a[tag=donador,scores={manzana_dorada = 1}] manzana_dorada
schedule function eb003:o/0/absorption 1s
