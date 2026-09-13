## 调试
execute if score fzsd.logger.level fzsd.variable.integer matches ..400 run tellraw @a [{"nbt": "fzsd.level.debug", "interpret": true, "storage": "fzsd:logger"}, {"text": "事件已触发：玩家"}, {"selector": "@s"}, {"text": "受到了伤害"}]

## 将事件数据缓存
scoreboard players operation fzsd.var.score fzsd.variable.integer = @s fzsd.event.damage_taken
scoreboard players operation fzsd.var.score fzsd.variable.integer /= 10 fzsd.variable.integer

## 运行事件
function #fzsd:game_event/player/on_took_damage