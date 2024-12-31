scoreboard players enable @a s
scoreboard players enable @a tp

#assign uid
execute as @a unless score @s spec.uid matches -2147483648..2147483647 store result score @s spec.uid run scoreboard players add #spec.uid spec.uid 1

execute as @a at @s if score @s s matches 1 run function spec:record
execute as @a at @s if score @s s matches 3 run function spec:back
execute as @a at @s if score @s s matches 5.. run scoreboard players set @s s 0

execute as @a at @s if score @s tp matches 1.. run function spec:tp


#protection mechanism
execute at @a[gamemode=spectator] if dimension overworld as @a[y=-129,dy=-20] run tp @s ~ -128 ~
execute at @a[gamemode=spectator] unless dimension overworld as @a[y=-65,dy=-64] run tp @s ~ -64 ~