## 详细
execute if score fzsd.logger.level fzsd.variable.integer matches ..300 run tellraw @a [{"nbt": "fzsd.level.fine", "interpret": true, "storage": "fzsd:logger"}, {"text": "事件已触发：玩家"}, {"selector": "@s"}, {"text": "飞行了1m"}]

## 将事件数据缓存
scoreboard players operation fzsd.var.score fzsd.variable.integer = @s fzsd.event.aviating_distance
scoreboard players operation fzsd.var.score fzsd.variable.integer /= 200 fzsd.variable.integer

## 运行事件
function #fzsd:game_event/player/on_aviate_one_meter