# 调用者：advancements/fzsd:~

## 调试
execute if score fzsd.logger.level fzsd.variable.integer matches ..400 run tellraw @a [{"nbt": "fzsd.level.debug", "interpret": true, "storage": "fzsd:logger"}, {"text": "事件已触发：玩家"}, {"selector": "@s"}, {"text": "从蹲下状态站起"}]

# 调用者：advancement/fzsd:unskeak
##### 当玩家蹲起后触发此事件

## 运行事件
function #fzsd:game_event/player/on_unsneak

## 重置事件进度
advancement revoke @s through fzsd:game_event/on_unsneak