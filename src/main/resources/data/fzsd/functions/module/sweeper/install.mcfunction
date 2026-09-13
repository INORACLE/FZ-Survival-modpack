bossbar add fzsd:sweeper ""
bossbar set fzsd:sweeper max 60

## 标记为已安装
data modify storage fzsd:install fzsd.module.sweeper set value 1b

## 日志
execute if score fzsd.logger.level fzsd.variable.integer matches ..500 run tellraw @a [{"nbt": "fzsd.level.info", "interpret": true, "storage": "fzsd:logger"}, {"text": "已安装组件：扫地机"}]