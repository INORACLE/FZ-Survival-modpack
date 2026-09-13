# 调用者：#fzsd:module/scoreboard/display/set_text/kill_count

data modify storage fzsd:module fzsd.module.scoreboard.text.kill_count set value '{"text": "击杀榜", "color": "blue"}'
scoreboard objectives setdisplay sidebar.team.blue fzsd.module.scoreboard.display.kill_count
scoreboard objectives modify fzsd.module.scoreboard.display.kill_count displayname {"text": "击杀榜", "color": "blue"}
team modify fzsd.module.scoreboard.display.kill_count color blue
team modify fzsd.module.scoreboard.display.kill_count displayName {"text": "击杀榜", "color": "blue"}