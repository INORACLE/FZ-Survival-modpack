# 调用者：fzsd:game_event/player/on_broke_block_with_tool/try_trigger

## 调试
execute if score fzsd.logger.level fzsd.variable.integer matches ..400 run tellraw @a [{"nbt": "fzsd.level.debug", "interpret": true, "storage": "fzsd:logger"}, {"text": "事件已触发：玩家"}, {"selector": "@s"}, {"text": "挖掘了方块"}]

## 运行事件
function #fzsd:game_event/player/on_broke_block_with_tool