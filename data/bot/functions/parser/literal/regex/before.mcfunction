data modify storage bot:parser consumed set value true
execute if data storage bot:parser {current:"/"} run data modify storage bot:parser stack[-1].metadata.status set value "open"
execute unless data storage bot:parser {current:"/"} unless data storage bot:parser {current:" "} run data modify storage bot:parser raise set value '{"text":"[Literal - Regex]: Expected /", received \\"","extra":[{"nbt":"current","storage":"bot:parser"},"\\""]}'