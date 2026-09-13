data modify storage fzsd:global fzsd.api.dimension.id set from entity @s SpawnDimension
data modify storage fzsd:last_spawn_point fzsd.x set from entity @s SpawnX
data modify storage fzsd:last_spawn_point fzsd.y set from entity @s SpawnY
data modify storage fzsd:last_spawn_point fzsd.z set from entity @s SpawnZ

## 调试
execute if score fzsd.logger.level fzsd.variable.integer matches ..400 run tellraw @a [{"nbt": "fzsd.level.debug", "interpret": true, "storage": "fzsd:logger"}, {"text": "玩家"}, {"selector": "@s"}, {"text": "获取了出生点"}]