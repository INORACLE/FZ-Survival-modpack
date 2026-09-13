# 调用者：#fzsd:module/scoreboard/display/set_text/aviating_distance

data modify storage fzsd:module fzsd.module.scoreboard.text.aviating_distance set value '{"text": "飞行距离", "color": "gold"}'
scoreboard objectives setdisplay sidebar.team.gold fzsd.module.scoreboard.display.aviating_distance
scoreboard objectives modify fzsd.module.scoreboard.display.aviating_distance displayname {"text": "飞行距离", "color": "gold"}
team modify fzsd.module.scoreboard.display.aviating_distance color gold
team modify fzsd.module.scoreboard.display.aviating_distance displayName {"text": "飞行距离", "color": "gold"}