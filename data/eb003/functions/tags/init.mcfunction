scoreboard objectives add vida health
scoreboard objectives setdisplay list vida
difficulty hard

execute in minecraft:overworld run forceload add 100000 100000
execute in minecraft:overworld run setblock 100000 0 100000 minecraft:shulker_box

scoreboard objectives add eb003 deathCount
scoreboard objectives add dificultad dummy
scoreboard objectives add blindness dummy
scoreboard objectives add muerte deathCount
scoreboard objectives add sonido deathCount
scoreboard objectives add totem minecraft.used:minecraft.totem_of_undying
scoreboard objectives add manzana_dorada minecraft.used:minecraft.golden_apple


schedule function eb003:o/0/absorption 1s
scoreboard objectives add datapack2 dummy
scoreboard objectives add usedTotem minecraft.used:minecraft.totem_of_undying
scoreboard objectives add failProbability dummy

scoreboard objectives add dormir minecraft.custom:minecraft.sleep_in_bed
scoreboard players set @a dormir 0

schedule function eb003:o/dificultades/almasligadas 1s


scoreboard objectives add jsTicks dummy
scoreboard objectives add jsSegundos dummy
scoreboard objectives add jsMinutos dummy

bossbar add yo "MONDONBOSS"
scoreboard objectives add vb dummy
bossbar set minecraft:yo max 84
