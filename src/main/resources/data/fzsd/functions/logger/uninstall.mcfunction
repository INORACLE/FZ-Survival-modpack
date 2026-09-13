## 调用者：#fzsd:logger/uninstall

## 调试
execute if score fzsd.logger.level fzsd.variable.integer matches ..400 run tellraw @a [{"nbt": "fzsd.level.debug", "interpret": true, "storage": "fzsd:logger"}, {"text": "已卸载系统组件：日志"}]

## 询问是否清除数据
execute if score fzsd.logger.level fzsd.variable.integer matches ..600 run tellraw @s [{"nbt": "fzsd.level.alert", "interpret": true, "storage": "fzsd:logger"}, {"text": "您要删除日志配置吗，它将会永久失去！(真的很久！)"}, {"text": "[确定]", "color": "dark_red", "clickEvent": {"action": "suggest_command", "value": "/function #fzsd:logger/clear_data"}, "hoverEvent": {"action": "show_text", "contents": {"text": "将命令填入聊天框"}}}]