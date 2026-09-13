## 标记为已安装
data modify storage fzsd:install fzsd.global set value 1b

## 日志
tellraw @a [{"nbt": "fzsd.level.info", "interpret": true, "storage": "fzsd:logger"}, {"text": "安装完成！"}]