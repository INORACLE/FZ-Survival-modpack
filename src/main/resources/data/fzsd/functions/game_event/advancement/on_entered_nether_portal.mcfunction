## 调试
execute if score fzsd.logger.level fzsd.variable.integer matches ..400 run tellraw @a [{"nbt": "fzsd.level.debug", "interpret": true, "storage": "fzsd:logger"}, {"text": "事件已触发：玩家"}, {"selector": "@s"}, {"text": "进入了下届传送门"}]

function #fzsd:game_event/player/on_entered_nether_portal

## 重置事件进度
advancement revoke @s from fzsd:game_event/on_entered_nether_portal