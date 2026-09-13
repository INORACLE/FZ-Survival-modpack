# 调用者：#fzsd:module/interactor/reset_trigger

scoreboard players set @s fzsd.module.interactor.trigger 0
scoreboard players enable @s fzsd.module.interactor.trigger

## 调试
execute if score fzsd.logger.level fzsd.variable.integer matches ..400 run tellraw @a [{"nbt": "fzsd.level.debug", "interpret": true, "storage": "fzsd:logger"}, {"text": "已重置玩家"}, {"selector": "@s"}, {"text": "的触发器分数"}]