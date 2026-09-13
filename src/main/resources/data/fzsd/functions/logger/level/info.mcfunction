
## info 500
data modify storage fzsd:logger fzsd.levels.current set value 500
execute store result score fzsd.logger.level fzsd.variable.integer run data get storage fzsd:logger fzsd.levels.current

## 日志
tellraw @a [{"nbt": "fzsd.level.info", "interpret": true, "storage": "fzsd:logger"}, {"text": "日志等级设为一般信息"}]