scoreboard objectives remove enmity.health
scoreboard objectives remove enmity.hp_dummy
scoreboard objectives remove enmity.use
scoreboard objectives remove enmity.left
scoreboard objectives remove enmity.setup
scoreboard objectives remove enmity.mana
scoreboard objectives remove enmity.max_mana
scoreboard objectives remove enmity.cooldown
scoreboard objectives remove enmity.math_a
scoreboard objectives remove enmity.math_b
scoreboard objectives remove enmity.math_c
scoreboard objectives remove enmity.math_d
scoreboard objectives remove enmity.math_e
scoreboard objectives remove enmity.math_f
scoreboard objectives remove enmity.age
scoreboard objectives remove enmity.raycast
scoreboard objectives remove enmity.flight
scoreboard objectives remove enmity.rotation
scoreboard objectives remove enmity.iframes
scoreboard objectives remove enmity.impact_ct
scoreboard objectives remove enmity.max_hp
scoreboard objectives remove enmity.max_snt
scoreboard objectives remove enmity.idle_cd
scoreboard objectives remove enmity.biome_type
scoreboard objectives remove enmity.amb_loop
scoreboard objectives remove enmity.dmg_rdc
scoreboard objectives remove enmity.dmg
scoreboard objectives remove enmity.dmg_bst
scoreboard objectives remove enmity.phase
scoreboard objectives remove enmity.phase_ct
scoreboard objectives remove enmity.snt_ct
scoreboard objectives remove enmity.temp
scoreboard objectives remove enmity.temp_cd
scoreboard objectives remove enmity.die
scoreboard objectives remove enmity.taken_dmg
scoreboard objectives remove enmity.dmg_buffer_1
scoreboard objectives remove enmity.dmg_buffer_2
scoreboard objectives remove enmity.phantasmal_curse
scoreboard objectives remove enmity.player_targeting
scoreboard objectives remove enmity.food
scoreboard objectives remove enmity.jump
scoreboard objectives remove enmity.sneaking_time
scoreboard objectives remove enmity.air
scoreboard objectives remove enmity.mana_display
scoreboard objectives remove enmity.mana_regen
scoreboard objectives remove enmity.in_end_center_time
scoreboard objectives remove enmity.egapple_cooldown
scoreboard objectives remove enmity.guide
scoreboard objectives remove enmity.ender_dragon_defeated
scoreboard objectives remove enmity.value
scoreboard objectives remove enmity.death_mode_regen_cd
scoreboard objectives remove enmity.dmg_rdc_mtp
scoreboard objectives remove enmity.use_bundle
scoreboard objectives remove enmity.subjugator_capture_id
scoreboard objectives remove enmity.subjugator_range
scoreboard objectives remove enmity.posx
scoreboard objectives remove enmity.posy
scoreboard objectives remove enmity.posz
scoreboard objectives remove enmity.waystone
scoreboard objectives remove enmity.waystone_tp
scoreboard objectives remove enmity.xp
scoreboard objectives remove enmity.xp_old
scoreboard objectives remove enmity.midair_time
scoreboard objectives remove enmity.remove_sentries
bossbar remove enmity.giant
bossbar remove enmity.elder_guardian
kill @e[type=marker,tag=enmity.setup]
tag @a remove enmity.setup
tag @e remove enmity.modified
scoreboard players set @a enmity.left 1
team remove enmity.black
reload