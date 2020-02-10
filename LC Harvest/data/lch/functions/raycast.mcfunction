execute at @s anchored eyes run summon minecraft:area_effect_cloud ^ ^ ^1 {Radius:0f,Duration:2147483647,Tags:[lch_ray]}
execute at @s anchored eyes run summon minecraft:area_effect_cloud ^ ^ ^2 {Radius:0f,Duration:2147483647,Tags:[lch_ray]}
execute at @s anchored eyes run summon minecraft:area_effect_cloud ^ ^ ^3 {Radius:0f,Duration:2147483647,Tags:[lch_ray]}

execute as @e[tag=lch_ray] at @s if block ~ ~ ~ minecraft:carrots[age=7] unless entity @e[tag=lch_clickdetect,distance=..1.1] align xyz positioned ~.5 ~ ~.5 run summon slime ~ ~ ~ {Size:2,Silent:1,NoAI:1,ActiveEffects:[{Id:14,Amplifier:0,Duration:999999}],Tags:[lch_clickdetect]}
execute as @e[tag=lch_ray] at @s if block ~ ~ ~ minecraft:wheat[age=7] unless entity @e[tag=lch_clickdetect,distance=..1.1] align xyz positioned ~.5 ~ ~.5 run summon slime ~ ~ ~ {Size:2,Silent:1,NoAI:1,ActiveEffects:[{Id:14,Amplifier:0,Duration:999999}],Tags:[lch_clickdetect]}
execute as @e[tag=lch_ray] at @s if block ~ ~ ~ minecraft:potatoes[age=7] unless entity @e[tag=lch_clickdetect,distance=..1.1] align xyz positioned ~.5 ~ ~.5 run summon slime ~ ~ ~ {Size:2,Silent:1,NoAI:1,ActiveEffects:[{Id:14,Amplifier:0,Duration:999999}],Tags:[lch_clickdetect]}
execute as @e[tag=lch_ray] at @s if block ~ ~ ~ minecraft:beetroots[age=3] unless entity @e[tag=lch_clickdetect,distance=..1.1] align xyz positioned ~.5 ~ ~.5 run summon slime ~ ~ ~ {Size:2,Silent:1,NoAI:1,ActiveEffects:[{Id:14,Amplifier:0,Duration:999999}],Tags:[lch_clickdetect]}
team join lch_clicker @e[tag=lch_clickdetect]
execute as @e[tag=lch_clickdetect] at @s unless entity @e[tag=lch_ray,distance=..1] run tp @s ~ ~-1000 ~
effect give @e[tag=lch_clickdetect] minecraft:invisibility 1000000 1 true

kill @e[tag=lch_ray,type=area_effect_cloud]

#summon villager ~ ~ ~ {VillagerData:{profession:nitwit,level:99,type:plains},Invulnerable:1,Silent:1,NoAI:1}