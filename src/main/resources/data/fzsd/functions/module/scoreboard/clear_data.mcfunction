# 调用者：#fzsd:module/scoreboard/clear_data

## 删除计分板
### 总览
scoreboard objectives remove fzsd.module.scoreboard.assign.general
scoreboard objectives remove fzsd.module.scoreboard.display.general
### 活跃度
scoreboard objectives remove fzsd.module.scoreboard.display.activation
### 飞行距离
scoreboard objectives remove fzsd.module.scoreboard.display.aviating_distance
### 受伤害榜
scoreboard objectives remove fzsd.module.scoreboard.display.damage_taken
### 死亡榜
scoreboard objectives remove fzsd.module.scoreboard.display.death_count
### 挖掘榜
scoreboard objectives remove fzsd.module.scoreboard.display.dig_count
### 钓鱼榜
scoreboard objectives remove fzsd.module.scoreboard.display.fishing_count
### 击杀榜
scoreboard objectives remove fzsd.module.scoreboard.display.kill_count
### 交易榜
scoreboard objectives remove fzsd.module.scoreboard.display.trade_count

## 清除队伍
### 轮播
team remove fzsd.module.scoreboard.display.carousel
### 总览
team remove fzsd.module.scoreboard.display.general
### 活跃度
team remove fzsd.module.scoreboard.display.activation
### 飞行距离
team remove fzsd.module.scoreboard.display.aviating_distance
### 受伤害榜
team remove fzsd.module.scoreboard.display.damage_taken
### 死亡榜
team remove fzsd.module.scoreboard.display.death_count
### 挖掘榜
team remove fzsd.module.scoreboard.display.dig_count
### 钓鱼榜
team remove fzsd.module.scoreboard.display.fishing_count
### 击杀榜
team remove fzsd.module.scoreboard.display.kill_count
### 交易榜
team remove fzsd.module.scoreboard.display.trade_count

## 日志
execute if score fzsd.logger.level fzsd.variable.integer matches ..500 run tellraw @a [{"nbt": "level.info", "interpret": true, "storage": "fzsd:logger"}, {"text": "已删除计分板数据！"}]