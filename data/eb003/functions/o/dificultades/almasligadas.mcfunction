execute as @a[name=Zektrum,scores={muerte=1}] run kill SrDqrk
execute as @a[name=Zektrum,scores={muerte=1}] run kill iGqmer

execute as @a[name=SrDqrk,scores={muerte=1}] run kill Zektrum
execute as @a[name=SrDqrk,scores={muerte=1}] run kill iGqmer

execute as @a[name=iGqmer,scores={muerte=1}] run kill Zektrum
execute as @a[name=iGqmer,scores={muerte=1}] run kill SrDqrk

execute as @a[name=Edwards_BC,scores={muerte=1}] run kill JesCherry
execute as @a[name=JesCherry,scores={muerte=1}] run kill Edwards_BC

execute as @a[name=Reyiro,scores={muerte=1}] run kill XxdxnixX
execute as @a[name=XxdxnixX,scores={muerte=1}] run kill Reyiro

scoreboard players set Zektrum muerte 0
scoreboard players set iGqmer muerte 0
scoreboard players set SrDqrk muerte 0
scoreboard players set Edwards_BC muerte 0
scoreboard players set JesCherry muerte 0
scoreboard players set XxdxnixX muerte 0
scoreboard players set Reyiro muerte 0

schedule function eb003:o/dificultades/almasligadas 1s
