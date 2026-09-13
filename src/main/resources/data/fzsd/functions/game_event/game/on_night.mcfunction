# 调用者：fzsd:game_event/game/on_night/on_tick

## 调试
execute if score fzsd.logger.level fzsd.variable.integer matches ..400 run tellraw @a [{"nbt": "fzsd.level.debug", "interpret": true, "storage": "fzsd:logger"}, {"text": "事件已触发：夜幕降临"}]

## 运行事件
function #fzsd:game_event/game/on_night