scoreboard objectives add fzsd.module.interactor.trigger trigger
scoreboard objectives add fzsd.module.interactor.player.config dummy

## 标记为已安装
data modify storage fzsd:install fzsd.module.interactor set value 1b

## 日志
execute if score fzsd.logger.level fzsd.variable.integer matches ..500 run tellraw @a [{"nbt": "fzsd.level.info", "interpret": true, "storage": "fzsd:logger"}, {"text": "已安装组件：配置"}]