# 调用者：tags\functions\module\phantom_warning\send_phantom_warning.json
## 对当前玩家发送提醒
execute if score fzsd.logger.level fzsd.variable.integer matches ..600 if data storage fzsd:perm {phantom_warning:1} if entity @s[tag=fzsd.admin] run tellraw @s [{"nbt": "fzsd.level.alert", "interpret": true, "storage": "fzsd:logger"}, {"text": "今晚可能会生成幻翼，建议睡觉！"}]
execute if score fzsd.logger.level fzsd.variable.integer matches ..600 unless data storage fzsd:perm {phantom_warning:1} run tellraw @s [{"nbt": "fzsd.level.alert", "interpret": true, "storage": "fzsd:logger"}, {"text": "今晚可能会生成幻翼，建议睡觉！"}]

## 调试
execute if score fzsd.logger.level fzsd.variable.integer matches ..400 run tellraw @a [{"nbt": "fzsd.level.debug", "interpret": true, "storage": "fzsd:logger"}, {"text": "事件已触发：向玩家"}, {"selector": "@s"}, {"text": "发送幻翼预警"}]
