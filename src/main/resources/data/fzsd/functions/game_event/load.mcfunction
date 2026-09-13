execute as @a[predicate=fzsd:is_real_player] run function #fzsd:game_event/player/on_login
function fzsd:game_event/on_tick
## 调试
execute if score fzsd.logger.level fzsd.variable.integer matches ..400 run tellraw @a [{"nbt": "fzsd.level.debug", "interpret": true, "storage": "fzsd:logger"}, {"text": "已加载系统组件：游戏事件"}]