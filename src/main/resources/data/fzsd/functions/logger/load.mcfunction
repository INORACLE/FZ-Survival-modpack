# 调用者：#fzsd:logger/init

## 读取日志等级存入缓存
execute store result score fzsd.logger.level fzsd.variable.integer run data get storage fzsd:logger fzsd.levels.current

## 调试
execute if score fzsd.logger.level fzsd.variable.integer matches ..400 run tellraw @a [{"nbt": "fzsd.level.debug", "interpret": true, "storage": "fzsd:logger"}, {"text": "已加载系统组件：日志"}]