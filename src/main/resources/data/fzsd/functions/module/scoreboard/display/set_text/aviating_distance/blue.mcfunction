# 调用者：#fzsd:module/scoreboard/display/set_text/aviating_distance

data modify storage fzsd:module fzsd.module.scoreboard.text.aviating_distance set value '{"text": "飞行距离", "color": "blue"}'
scoreboard objectives setdisplay sidebar.team.blue fzsd.module.scoreboard.display.aviating_distance
scoreboard objectives modify fzsd.module.scoreboard.display.aviating_distance displayname {"text": "飞行距离", "color": "blue"}
team modify fzsd.module.scoreboard.display.aviating_distance color blue
team modify fzsd.module.scoreboard.display.aviating_distance displayName {"text": "飞行距离", "color": "blue"}