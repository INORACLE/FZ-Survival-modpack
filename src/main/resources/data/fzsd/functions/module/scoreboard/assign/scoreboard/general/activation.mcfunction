## 为了扩展性，尽量想把这种硬编码的字段写在同一个文件里方便覆盖
## 但为了实现这一目标，在此处除了每次添加一次队伍以外，暂时没有找到其他好方法，不知道性能如何
team join fzsd.module.scoreboard.display.activation 总活跃时间

scoreboard players operation 总活跃时间 fzsd.module.scoreboard.display.general = fzsd.module.scoreboard.total.activation fzsd.module.scoreboard.assign.general
scoreboard players operation 总活跃时间 fzsd.module.scoreboard.display.activation = fzsd.module.scoreboard.total.activation fzsd.module.scoreboard.assign.general