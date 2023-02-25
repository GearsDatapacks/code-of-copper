execute on passengers as @s[type=marker,tag=bot.golem.brain] run data modify entity @s data.instructions[-1].isLooping set value true

execute on passengers as @s[type=marker,tag=bot.golem.brain] unless data entity @s data.instructions[-1].sleepTime run data modify entity @s data.instructions[-1].sleepTime set from storage bot:interpreter/execution Current.args[0].value
execute on passengers as @s[type=marker,tag=bot.golem.brain] store result score .sleep_time bot.execution.variables run data get entity @s data.instructions[-1].sleepTime
execute on passengers as @s[type=marker,tag=bot.golem.brain] store result entity @s data.instructions[-1].sleepTime int 1 run scoreboard players remove .sleep_time bot.execution.variables 1

execute if score .sleep_time bot.execution.variables matches ..0 on passengers as @s[type=marker,tag=bot.golem.brain] run data modify entity @s data.instructions[-1].isLooping set value false
