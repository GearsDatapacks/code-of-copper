execute in moxlib:state positioned 3 57 -4 run setblock ~ ~ ~ chest
execute in moxlib:state positioned 3 57 -4 run data modify block ~ ~ ~ Items set from entity @s Items
clone ~ ~ ~ ~ ~ ~ to moxlib:state 3 56 -4
execute in moxlib:state positioned 3 57 -4 as 0f80604b-e7f2-4a90-80c3-991c3eb3f73b store result score .has_space bot.execution.variables run loot insert ~ ~ ~ mine ~ ~-1 ~ mainhand
execute unless score .has_space bot.execution.variables matches 1.. as 0f80604b-e7f2-4a90-80c3-991c3eb3f73b run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute in moxlib:state positioned 3 57 -4 run data modify entity @s Items set from block ~ ~ ~ Items
execute in moxlib:state positioned 3 56 -4 run setblock ~ ~ ~ air
execute in moxlib:state positioned 3 57 -4 run kill @e[type=item,sort=nearest,limit=1]
execute unless block ~ ~ ~ air store result score .damage bot.execution.variables run data get entity 0f80604b-e7f2-4a90-80c3-991c3eb3f73b HandItems[0].tag.Damage
execute unless block ~ ~ ~ air store result entity 0f80604b-e7f2-4a90-80c3-991c3eb3f73b HandItems[0].tag.Damage int 1 run scoreboard players add .damage bot.execution.variables 1
setblock ~ ~ ~ air
setblock ~ ~-1 ~ air
