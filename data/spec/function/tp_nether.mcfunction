execute as @s[gamemode=spectator] in the_nether run tp ~ ~ ~
execute as @s[gamemode=spectator] if dimension the_end run execute in the_nether run tp 0 64 0
execute as @s unless entity @s[gamemode=spectator] run tellraw @s {"translate":"tp.spec.fail","fallback":"请在旁观者模式下使用","color":"red"}