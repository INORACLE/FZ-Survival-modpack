scoreboard objectives add fzsd.module.last_nether_portal.dimension dummy
scoreboard objectives add fzsd.module.last_nether_portal.x dummy
scoreboard objectives add fzsd.module.last_nether_portal.y dummy
scoreboard objectives add fzsd.module.last_nether_portal.z dummy

## 标记为已安装
data modify storage fzsd:install fzsd.module.last_nether_portal set value 1b

## 日志
execute if score fzsd.logger.level fzsd.variable.integer matches ..500 run tellraw @a [{"nbt": "fzsd.level.info", "interpret": true, "storage": "fzsd:logger"}, {"text": "已安装组件：上次穿出的下界传送门"}]