# 调用者：#fzsd:module/scoreboard/display/set_text/aviating_distance

data modify storage fzsd:module fzsd.module.scoreboard.text.aviating_distance set value '{"text": "飞行距离", "color": "red"}'
scoreboard objectives setdisplay sidebar.team.red fzsd.module.scoreboard.display.aviating_distance
scoreboard objectives modify fzsd.module.scoreboard.display.aviating_distance displayname {"text": "飞行距离", "color": "red"}
team modify fzsd.module.scoreboard.display.aviating_distance color red
team modify fzsd.module.scoreboard.display.aviating_distance displayName {"text": "飞行距离", "color": "red"}