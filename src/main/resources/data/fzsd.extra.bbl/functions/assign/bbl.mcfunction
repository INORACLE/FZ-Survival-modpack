# 见#fzsd.extra.bbl:event/broke_bedrock
## 如果运行时id不存在则注册运行时id
execute unless score fzsd.module.scoreboard.display.bedrock_broken_count.id fzsd.variable.integer matches 0.. run function fzsd.extra.bbl:display/register_id
scoreboard players operation @s fzsd.module.scoreboard.display.bedrock_broken_count += fzsd.var.score fzsd.variable.integer
scoreboard players operation fzsd.module.scoreboard.total.bedrock_broken_count fzsd.module.scoreboard.assign.general += fzsd.var.score fzsd.variable.integer
