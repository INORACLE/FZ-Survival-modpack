## 标记为已卸载
data modify storage fzsd:install fzsd.module.phantom_warning set value 0b

## 日志
execute if score fzsd.logger.level fzsd.variable.integer matches ..500 run tellraw @a [{"nbt": "fzsd.level.info", "interpret": true, "storage": "fzsd:logger"}, {"text": "已卸载组件：幻翼预警"}]