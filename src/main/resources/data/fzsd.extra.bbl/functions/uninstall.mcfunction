# 见#fzsd:module/scoreboard/uninstall
## 移除底层实现计分板
scoreboard objectives remove fzsd.extra.bbl
## 移除计分板订阅队伍
team remove fzsd.module.scoreboard.display.bedrock_broken_count
## 设为已卸载
data modify storage fzsd:install fzsd.extra.bbl set value 0b
execute if score fzsd.logger.level fzsd.variable.integer matches ..500 run tellraw @a [{"nbt": "fzsd.level.info", "interpret": true, "storage": "fzsd:logger"}, {"text": "已卸载扩展：破基岩榜"}]