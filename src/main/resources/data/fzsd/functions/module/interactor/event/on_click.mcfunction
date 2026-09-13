## 运行事件
function #fzsd:module/interactor/event/on_click
## 触发器分数为正数时重新显示交互器按钮，为负数时不显示
execute if score @s fzsd.module.interactor.trigger matches 1.. run function #fzsd:module/interactor/event/on_display