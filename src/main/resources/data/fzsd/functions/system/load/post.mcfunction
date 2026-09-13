## 日志
execute if score fzsd.logger.level fzsd.variable.integer matches ..500 run tellraw @a [{"nbt": "fzsd.level.info", "interpret": true, "storage": "fzsd:logger"}, {"text": "加载完成！"}]