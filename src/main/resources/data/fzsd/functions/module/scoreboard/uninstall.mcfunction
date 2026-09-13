# 调用者：#fzsd:module/scoreboard/uninstall

## 关闭轮播循环
schedule clear fzsd:module/scoreboard/display/carousel/loop

## 关闭计分板显示
scoreboard objectives setdisplay sidebar.team.aqua
scoreboard objectives setdisplay sidebar.team.black
scoreboard objectives setdisplay sidebar.team.blue
scoreboard objectives setdisplay sidebar.team.dark_aqua
scoreboard objectives setdisplay sidebar.team.dark_blue
scoreboard objectives setdisplay sidebar.team.dark_gray
scoreboard objectives setdisplay sidebar.team.dark_green
scoreboard objectives setdisplay sidebar.team.dark_purple
scoreboard objectives setdisplay sidebar.team.dark_red
scoreboard objectives setdisplay sidebar.team.gold
scoreboard objectives setdisplay sidebar.team.gray
scoreboard objectives setdisplay sidebar.team.green
scoreboard objectives setdisplay sidebar.team.light_purple
scoreboard objectives setdisplay sidebar.team.red
scoreboard objectives setdisplay sidebar.team.white
scoreboard objectives setdisplay sidebar.team.yellow

team remove fzsd.module.scoreboard.fake
team remove fzsd.module.scoreboard.shadow

## 询问是否清除数据
execute if score fzsd.logger.level fzsd.variable.integer matches ..600 run tellraw @s [{"nbt": "fzsd.level.alert", "interpret": true, "storage": "fzsd:logger"}, {"text": "您要删除计分板数据吗，它将会永久失去！(真的很久！)"}, {"text": "[确定]", "color": "dark_red", "clickEvent": {"action": "suggest_command", "value": "/function #fzsd:module/scoreboard/clear_data"}, "hoverEvent": {"action": "show_text", "contents": {"text": "将命令填入聊天框"}}}]

## 标记为已卸载
data modify storage fzsd:install fzsd.module.scoreboard set value 0b

## 日志
execute if score fzsd.logger.level fzsd.variable.integer matches ..500 run tellraw @a [{"nbt": "fzsd.level.info", "interpret": true, "storage": "fzsd:logger"}, {"text": "已卸载组件：计分板"}]