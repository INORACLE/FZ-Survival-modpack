## 距上次睡觉时间
scoreboard objectives add fzsd.api.time_since_rest minecraft.custom:time_since_rest

## 调试
execute if score fzsd.logger.level fzsd.variable.integer matches ..400 run tellraw @a [{"nbt": "fzsd.level.debug", "interpret": true, "storage": "fzsd:logger"}, {"text": "已安装系统组件：API"}]