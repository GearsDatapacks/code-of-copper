data modify storage bot:io In set from storage bot:interpreter/execution Current.args[1]
function bot:interpreter/evaluate

function bot:interpreter/execution/place/move_to_position


data modify storage bot:io In set from entity @s Items
execute store result score .in1 bot.execution.variables run data get storage bot:interpreter/execution Current.args[0].value
function bot:interpreter/utils/get_item_at_index
execute store result score .slot bot.execution.variables run data get storage bot:io Out.Slot

data modify storage bot:io In set from storage bot:io Out
execute unless data storage bot:io Out{type:undefined} unless data storage bot:interpreter/execution Error at @s run function bot:interpreter/execution/place/break_or_place

data modify storage bot:io In set from storage bot:io Out
execute store result storage bot:io In.Slot byte 1 run scoreboard players get .slot bot.execution.variables
data modify storage bot:io In2 set from entity @s Items
function bot:interpreter/utils/put_item_at_index
data modify entity @s Items set from storage bot:io Out

function bot:interpreter/execution/move_back
