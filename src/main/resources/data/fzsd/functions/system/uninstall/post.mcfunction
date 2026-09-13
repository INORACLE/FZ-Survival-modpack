## 标记为已卸载
data modify storage fzsd:install fzsd.global set value 0b

## 日志
tellraw @a [{"nbt": "fzsd.level.info", "interpret": true, "storage": "fzsd:logger"}, {"text": "卸载完成！"}]