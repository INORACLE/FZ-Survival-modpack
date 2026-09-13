# 调用者：advancements/fzsd:~

## 调试
execute if score fzsd.logger.level fzsd.variable.integer matches ..400 run tellraw @a [{"nbt": "fzsd.level.debug", "interpret": true, "storage": "fzsd:logger"}, {"text": "事件已触发：玩家"}, {"selector": "@s"}, {"text": "对实体使用剪刀"}]

## 计算挖掘数据偏移量
scoreboard players remove @s fzsd.event.used_tool.dig_offset 1

## 运行事件
function #fzsd:game_event/player/on_shears_used_on_entity

## 重置事件进度
advancement revoke @s from fzsd:game_event/on_shears_used_on_entity