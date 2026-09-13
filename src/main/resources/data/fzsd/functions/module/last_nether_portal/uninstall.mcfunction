scoreboard objectives remove fzsd.module.last_nether_portal.dimension
scoreboard objectives remove fzsd.module.last_nether_portal.x
scoreboard objectives remove fzsd.module.last_nether_portal.y
scoreboard objectives remove fzsd.module.last_nether_portal.z
data remove storage fzsd:last_nether_portal fzsd

## 标记为已安装
data modify storage fzsd:install fzsd.module.last_nether_portal set value 0b

## 日志
execute if score fzsd.logger.level fzsd.variable.integer matches ..500 run tellraw @a [{"nbt": "fzsd.level.info", "interpret": true, "storage": "fzsd:logger"}, {"text": "已卸载组件：上次穿出的下界传送门"}]