execute if data storage bot:parser {current:"#"} run data modify storage bot:parser comment set value true
execute if data storage bot:parser {current:"^n"} if data storage bot:parser {comment:true} run data modify storage bot:parser comment set value false