execute in overworld run summon minecraft:marker 0. 0. 0. {Tags:["spec.tmp.marker","spec"]}

data modify entity @e[tag=spec.tmp.marker,limit=1] data.OwnerPos set from entity @s Pos
data modify entity @e[tag=spec.tmp.marker,limit=1] data.OwnerRotation set from entity @s Rotation

scoreboard players operation @e[tag=spec.tmp.marker,limit=1] spec.uid = @s spec.uid
tag @e[tag=spec.tmp.marker] remove spec.tmp.marker

execute if dimension overworld run scoreboard players set @s spec.dimension 1
execute if dimension the_nether run scoreboard players set @s spec.dimension 2
execute if dimension the_end run scoreboard players set @s spec.dimension 3

execute if entity @s[gamemode=survival] run scoreboard players set @s spec.gamemode 0
execute if entity @s[gamemode=creative] run scoreboard players set @s spec.gamemode 1
execute if entity @s[gamemode=adventure] run scoreboard players set @s spec.gamemode 2
execute if entity @s[gamemode=spectator] run scoreboard players set @s spec.gamemode 3

gamemode spectator
scoreboard players set @s s 2