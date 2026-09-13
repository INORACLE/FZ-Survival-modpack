# 应在原模块安装时一并安装模块扩展，见#fzsd:module/scoreboard/install
## 同时应在加载时检测是否需要重新安装，见./try_install
## 添加底层实现计分板
scoreboard objectives add fzsd.extra.bbl dummy
## 添加显示计分板
scoreboard objectives add fzsd.module.scoreboard.display.bedrock_broken_count dummy
## 添加计分板订阅队伍
team add fzsd.module.scoreboard.display.bedrock_broken_count
## 设为已安装
data modify storage fzsd:install fzsd.extra.bbl set value 1b
execute if score fzsd.logger.level fzsd.variable.integer matches ..500 run tellraw @a [{"nbt": "fzsd.level.info", "interpret": true, "storage": "fzsd:logger"}, {"text": "已安装扩展：破基岩榜"}]