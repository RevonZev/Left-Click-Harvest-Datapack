team join lch_clicker @a

execute as @a if entity @s[nbt={SelectedItem:{id:"minecraft:wooden_hoe"}}] run function lch:raycast
execute as @a if entity @s[nbt={SelectedItem:{id:"minecraft:stone_hoe"}}] run function lch:raycast
execute as @a if entity @s[nbt={SelectedItem:{id:"minecraft:iron_hoe"}}] run function lch:raycast
execute as @a if entity @s[nbt={SelectedItem:{id:"minecraft:golden_hoe"}}] run function lch:raycast
execute as @a if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_hoe"}}] run function lch:raycast
execute as @a unless entity @s[nbt={SelectedItem:{id:"minecraft:wooden_hoe"}}] unless entity @s[nbt={SelectedItem:{id:"minecraft:stone_hoe"}}] unless entity @e[tag=lch_ray,distance=..1] unless entity @s[nbt={SelectedItem:{id:"minecraft:iron_hoe"}}] unless entity @s[nbt={SelectedItem:{id:"minecraft:golden_hoe"}}] unless entity @s[nbt={SelectedItem:{id:"minecraft:diamond_hoe"}}] as @e[tag=lch_clickdetect] at @s run tp @s ~ ~-1000 ~

execute as @e[tag=lch_clickdetect] unless entity @s[nbt={Health:20.0f}] at @s run function lch:clickevent
scoreboard players reset @a lch_click
