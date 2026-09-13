# 调用者：advancements/fzsd:~

scoreboard players set @s fzsd.event.leave_game 0
execute if predicate fzsd:is_real_player if score @s fzsd.event.leave_game matches 0 run function fzsd:game_event/player/on_login

## 重制所有触发器、事件进度
function #fzsd:game_event/reset_all