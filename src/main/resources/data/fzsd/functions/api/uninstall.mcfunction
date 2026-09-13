## 距上次睡觉时间
scoreboard objectives remove fzsd.api.time_since_rest

## 调试
execute if score fzsd.logger.level fzsd.variable.integer matches ..400 run tellraw @a [{"nbt": "fzsd.level.debug", "interpret": true, "storage": "fzsd:logger"}, {"text": "已卸载系统组件：API"}]