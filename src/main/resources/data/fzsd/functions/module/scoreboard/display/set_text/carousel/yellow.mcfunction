# 调用者：#fzsd:module/scoreboard/display/set_text/carousel

data modify storage fzsd:module fzsd.module.scoreboard.text.carousel set value '{"text": "轮播", "color": "yellow"}'
team modify fzsd.module.scoreboard.display.carousel color yellow
team modify fzsd.module.scoreboard.display.carousel displayName {"text": "轮播", "color": "yellow"}
scoreboard players set fzsd.module.scoreboard.carousel.color fzsd.variable.integer 14