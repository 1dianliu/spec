data modify entity @s Pos set from entity @s data.OwnerPos
data modify entity @s Rotation set from entity @s data.OwnerRotation
execute if score @a[tag=spec.tmp.owner,limit=1] spec.dimension matches 1 at @s in overworld run tp @a[tag=spec.tmp.owner,limit=1] ~ ~ ~ ~ ~
execute if score @a[tag=spec.tmp.owner,limit=1] spec.dimension matches 2 at @s in the_nether run tp @a[tag=spec.tmp.owner,limit=1] ~ ~ ~ ~ ~
execute if score @a[tag=spec.tmp.owner,limit=1] spec.dimension matches 3 at @s in the_end run tp @a[tag=spec.tmp.owner,limit=1] ~ ~ ~ ~ ~
execute as @a[tag=spec.tmp.owner,limit=1] unless score @s spec.dimension matches 1..3 run tellraw @s {"type":"translatable","translate":"startback.spec.wrong","fallback":"维度计分板出问题了","color":"red"}

execute as @a[tag=spec.tmp.owner,limit=1] if score @s spec.gamemode matches 0 run gamemode survival @s
execute as @a[tag=spec.tmp.owner,limit=1] if score @s spec.gamemode matches 1 run gamemode creative @s
execute as @a[tag=spec.tmp.owner,limit=1] if score @s spec.gamemode matches 2 run gamemode adventure @s

kill @s