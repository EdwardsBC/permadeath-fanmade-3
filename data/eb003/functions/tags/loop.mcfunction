tag @a add pdscored
tag Edwards_BC add testdif

execute as @a[scores={eb003=1..}] run function eb003:0/0

execute as @a[scores={dificultad=1}] at @s run function eb003:o/dificultades/difuno
execute as @a[scores={dificultad=2}] at @s run function eb003:o/dificultades/difdos
execute as @a[scores={dificultad=3}] at @s run function eb003:o/dificultades/diftres

execute as @a[scores={muerte=1..}] at @s run function eb003:o/death/muerte
execute as @a[scores={totem=1}] at @s run function eb003:o/death/mensajedetotem
execute as @a[scores={sonido=1..}] at @a run function eb003:o/death/sonidomuerte

execute as @a[tag=donador,scores={manzana_dorada = 1}] run function eb003:o/0/golden


execute as @a[scores={blindness=1}] at @s run function eb003:o/dificultades/blindness/nether
execute as @a[scores={blindness=2}] at @s run function eb003:o/dificultades/blindness/overworld
execute as @a[scores={blindness=3}] at @s run function eb003:o/dificultades/blindness/end

execute unless entity @e[tag=pd_main] run summon minecraft:armor_stand ~ 150 ~ {Marker:1b,Invisible:1b,NoGravity:1b,Tags:["pd_main"]}
execute if entity @a[scores={usedTotem=1..}] run function eb003:o/dificultades/failtotems/failtest
execute if entity @e[tag=pdscored,scores={datapack2=0..0}] run scoreboard players set @a usedTotem 0
execute if entity @e[tag=pdscored,scores={datapack2=0..0}] run kill @e[tag=pfp]

execute if entity @a[tag=testdif] run function eb003:o/0/testdif

scoreboard players add @a jsTicks 1
execute as @a if score @s jsTicks matches 20 run scoreboard players add @s jsSegundos 1
execute as @a if score @s jsTicks matches 20 run scoreboard players set @s jsTicks 0
execute as @a if score @s jsSegundos matches 60 run scoreboard players add @s jsMinutos 1
execute as @a if score @s jsSegundos matches 60 run scoreboard players set @s jsSegundos 0

execute store result bossbar minecraft:yo value run scoreboard players get bossbar vb
execute store result score Isanm vb run scoreboard players get Isanm vida
execute store result score Edwards_BC vb run scoreboard players get Edwards_BC vida
execute store result score Reyiro vb run scoreboard players get Reyiro vida
execute store result score Mysthus vb run scoreboard players get Mysthus vida
scoreboard players operation bossbar1 vb += Isanm vb
scoreboard players operation bossbar1 vb += Edwards_BC vb
scoreboard players operation bossbar1 vb += Reyiro vb
scoreboard players operation bossbar1 vb += Mysthus vb
scoreboard players operation bossbar vb = bossbar1 vb
scoreboard players set bossbar1 vb 0

execute at 695aba5f-9961-4048-94ef-4529329b978b run function eb003:part/asd
