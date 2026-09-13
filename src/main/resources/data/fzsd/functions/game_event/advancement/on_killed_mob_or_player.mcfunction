# 调用者：advancements/fzsd:~

## 调试
execute if score fzsd.logger.level fzsd.variable.integer matches ..400 run tellraw @a [{"nbt": "fzsd.level.debug", "interpret": true, "storage": "fzsd:logger"}, {"text": "事件已触发：玩家"}, {"selector": "@s"}, {"text": "击杀了生物"}]

## 运行事件
function #fzsd:game_event/player/on_killed_mob_or_player

## 重置事件进度
advancement revoke @s from fzsd:game_event/on_killed_mob_or_player