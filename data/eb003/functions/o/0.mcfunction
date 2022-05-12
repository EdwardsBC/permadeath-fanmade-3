tag @s add eb003
loot insert 100000 0 100000 loot eb003:0
data modify entity @s ActiveEffects append from block 100000 0 100000 Items[0].tag.eb003
loot insert 100000 0 100000 loot eb003:1
data modify entity @s Attributes append from block 100000 0 100000 Items[1].tag.eb003
data remove block 100000 0 100000 Items
