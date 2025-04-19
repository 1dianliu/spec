scoreboard players set @s tp 0

tellraw @s {"type":"translatable","translate":"tp.spec.choose","fallback":"请选择要传送的维度","color":"gray"}

tellraw @s [{"type":"translatable","translate":"tp.spec.overworld","fallback":"主世界","color":"green","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger tp set 2"}},{"text":"   ","underlined":false},{"type":"translatable","translate":"tp.spec.nether","fallback":"下界","color":"dark_red","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger tp set 3"}},{"text":"   ","underlined":false},{"type":"translatable","translate":"tp.spec.end","fallback":"末地","color":"dark_gray","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger tp set 4"}}]