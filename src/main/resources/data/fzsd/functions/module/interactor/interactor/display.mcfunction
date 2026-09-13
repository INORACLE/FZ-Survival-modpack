## 调试
execute if score fzsd.logger.level fzsd.variable.integer matches ..400 run tellraw @a [{"nbt": "fzsd.level.debug", "interpret": true, "storage": "fzsd:logger"}, {"text": "向玩家"}, {"selector": "@s"}, {"text": "显示交互器"}]

execute if data storage fzsd:install fzsd.module{interactor:1b} run tellraw @s {"text": "交互器："}

execute if data storage fzsd:install fzsd.module{interactor:1b} if entity @s[tag=!fzsd.ignore_interactor_headup_sneak] run tellraw @s [{"text": "- 打开方式“抬头+蹲起”："}, [{"text": "[", "color": "dark_gray", "hoverEvent": {"action": "show_text", "value": "点击关闭"}, "clickEvent": {"action": "run_command", "value": "/trigger fzsd.module.interactor.trigger set 900"}},{"text": "已启用", "color": "green"},{"text": "]"}]]
execute if data storage fzsd:install fzsd.module{interactor:1b} if entity @s[tag=fzsd.ignore_interactor_headup_sneak] run tellraw @s [{"text": "- 打开方式“抬头+蹲起”："}, [{"text": "[", "color": "dark_gray", "hoverEvent": {"action": "show_text", "value": "点击启用"}, "clickEvent": {"action": "run_command", "value": "/trigger fzsd.module.interactor.trigger set 910"}},{"text": "已关闭", "color": "red"},{"text": "]"}]]