scoreboard players set @a dificultad 2


data merge entity @e[tag=,limit=1,sort=nearest,type=pig] {DeathLootTable:"eb003:mobs/1"}
data merge entity @e[tag=,limit=1,sort=nearest,type=cow] {DeathLootTable:"eb003:mobs/1"}
data merge entity @e[tag=,limit=1,sort=nearest,type=chicken] {DeathLootTable:"eb003:mobs/1"}
data merge entity @e[tag=,limit=1,sort=nearest,type=sheep] {DeathLootTable:"eb003:mobs/1"}
data merge entity @e[tag=,limit=1,sort=nearest,type=cod] {DeathLootTable:"eb003:mobs/1"}
data merge entity @e[tag=,limit=1,sort=nearest,type=salmon] {DeathLootTable:"eb003:mobs/1"}
data merge entity @e[tag=,limit=1,sort=nearest,type=tropical_fish] {DeathLootTable:"eb003:mobs/1"}
data merge entity @e[tag=,limit=1,sort=nearest,type=pufferfish] {DeathLootTable:"eb003:mobs/1"}
data merge entity @e[tag=,limit=1,sort=nearest,type=rabbit] {DeathLootTable:"eb003:mobs/1"}
data merge entity @e[tag=,limit=1,sort=nearest,type=donkey] {DeathLootTable:"eb003:mobs/1"}
data merge entity @e[tag=,limit=1,sort=nearest,type=guardian] {DeathLootTable:"eb003:mobs/1"}
data merge entity @e[tag=,limit=1,sort=nearest,type=horse] {DeathLootTable:"eb003:mobs/1"}
data merge entity @e[tag=,limit=1,sort=nearest,type=husk] {DeathLootTable:"eb003:mobs/1"}
data merge entity @e[tag=,limit=1,sort=nearest,type=llama] {DeathLootTable:"eb003:mobs/1"}
data merge entity @e[tag=,limit=1,sort=nearest,type=wandering_trader] {DeathLootTable:"eb003:mobs/1"}
data merge entity @e[tag=,limit=1,sort=nearest,type=squid] {DeathLootTable:"eb003:mobs/1"}

scoreboard players set @e[tag=pdscored] failProbability 7

execute as @a[tag=!NoPoison,scores={vida = 2..30}] at @s if block ~ ~ ~ water run effect give @s minecraft:poison 5 0

execute at @e[tag=,limit=1,sort=nearest,type=skeleton] run function eb003:mobs/0
tag @e[tag=,limit=1,sort=nearest,type=skeleton] add found

execute as @e[type=minecraft:player] if entity @e[type=minecraft:skeleton,distance=..3] run effect give @p minecraft:blindness 3 0

execute at @e[tag=,limit=1,sort=nearest,type=zombie] run function eb003:mobs/1
tag @e[tag=,limit=1,sort=nearest,type=zombie] add foundas

execute at @e[tag=,limit=1,sort=nearest,type=creeper] run function eb003:mobs/3
tag @e[tag=,limit=1,sort=nearest,type=creeper] add found

execute at @e[tag=,limit=1,sort=nearest,type=minecraft:wither_skeleton] run function eb003:mobs/4
tag @e[tag=,limit=1,sort=nearest,type=minecraft:wither_skeleton] add found

execute at @e[tag=,limit=1,sort=nearest,type=minecraft:wither_skeleton] run function eb003:mobs/8
tag @e[tag=,limit=1,sort=nearest,type=minecraft:wither_skeleton] add found



execute as @e[type=pufferfish,nbt={PuffState:1}] run effect give @s resistance 1 255 true
execute as @e[type=pufferfish,nbt={PuffState:2}] run effect give @s resistance 1 255 true
execute as @e[type=pufferfish,nbt={PuffState:2}] at @s run summon tnt
execute as @e[type=pufferfish,nbt={PuffState:2}] run data merge entity @s {PuffState:0}
execute as @e[type=pufferfish] run effect clear @s wither
execute as @e[type=pufferfish] run effect clear @s nausea
execute as @e[type=pufferfish] run effect clear @s blindness
execute as @e[type=pufferfish] run effect clear @s poison
execute as @e[type=pufferfish] run effect clear @s weakness

execute as @e[type=minecraft:vex,distance=..1] run summon creeper ~ ~ ~3 {Fuse:0}

execute as @e[type=minecraft:vindicator,tag=!eb003] run function eb003:o/1
execute as @e[type=minecraft:spider,tag=!eb003] run function eb003:o/0
execute as @e[type=minecraft:cave_spider,tag=!eb003] run function eb003:o/0
execute as @e[type=minecraft:silverfish,tag=!eb003] run function eb003:o/0

tag @s add axolot
execute as @e[type=minecraft:player] if entity @e[type=minecraft:axolotl,distance=..5] run tag @p remove axolot
execute as @a[tag=!axolot] if entity @e[type=minecraft:axolotl,distance=..5] run attribute @s minecraft:generic.max_health base set 10
execute as @a[tag=!axolot] if entity @e[type=minecraft:axolotl,distance=..5] run effect give @s minecraft:poison 3 1
execute as @a[tag=axolot] run attribute @s minecraft:generic.max_health base set 20

execute as @e[type=minecraft:iron_golem,tag=!eb003] run function eb003:o/3

execute as @e[type=minecraft:player] if entity @e[type=minecraft:player,scores={dormir=1..}] at @e[type=minecraft:player,scores={dormir=1..}] run summon minecraft:tnt ~ ~1 ~ {Fuse:0}
scoreboard players set @a dormir 0
scoreboard players set @a blindness 2
