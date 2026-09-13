# 扩展现有的模块时，应在加载时检测是否需要安装，见#fzsd:module/scoreboard/load
execute unless data storage fzsd:install fzsd.extra{bbl: 1b} run function fzsd.extra.bbl:install