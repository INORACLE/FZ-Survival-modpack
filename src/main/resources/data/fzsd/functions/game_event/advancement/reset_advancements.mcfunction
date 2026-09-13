## 复位所有事件进度
### 所有事件进度都继承了fzsd:game_event进度，因此只需要一行指令：
advancement revoke @s from fzsd:game_event

## 调试
execute if score fzsd.logger.level fzsd.variable.integer matches ..400 run tellraw @a [{"nbt": "fzsd.level.debug", "interpret": true, "storage": "fzsd:logger"}, {"text": "已重置玩家"}, {"selector": "@s"}, {"text": "的游戏事件进度"}]