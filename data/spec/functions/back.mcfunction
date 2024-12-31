execute in overworld store success score #forceload s unless loaded 0 0 0 run forceload add 0 0 0 0

tp @s @s

tag @s add spec.tmp.owner
execute as @e[tag=spec] if score @s spec.uid = @a[tag=spec.tmp.owner,limit=1] spec.uid run tag @s add spec.tmp.marker

execute unless entity @e[tag=spec.tmp.marker] run tellraw @s {"type":"translatable","translate":"back.spec.lose","fallback":"本体位置意外丢失 请手动切生存并排查问题(区块意外卸载 或者是标记被kill掉了) 如有bug联系b站“一点六”","color":"red"}

execute as @e[tag=spec.tmp.marker,limit=1] run function spec:startback

tag @s remove spec.tmp.owner
scoreboard players set @s s 0

execute if score #forceload s matches 1 in overworld run forceload remove 0 0 0 0
execute if score #forceload s matches 1 run scoreboard players reset #forceload s