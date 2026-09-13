# 调用者：fzsd:module/scoreboard/interactor/subscribe/~

team join fzsd.module.scoreboard.display.death_count @s

## 调试
execute if score fzsd.logger.level fzsd.variable.integer matches ..400 run tellraw @a [{"nbt": "fzsd.level.debug", "interpret": true, "storage": "fzsd:logger"}, {"text": "玩家"}, {"selector": "@s"}, {"text": "订阅了"}, {"nbt": "fzsd.module.scoreboard.text.death_count", "interpret": true, "storage": "fzsd:module"}, {"text": "计分板"}]