local mod = get_mod("Custom-Director")

DirectorUtils = {}

ConflictDirectors = ConflictDirectors or {}

DirectorUtils.add_new_ConflictDirector = function (name)
    ConflictDirectors[name] = {
        name = name,
        debug_color = "green",
        disabled = false,
        intensity = mod:dofile("scripts/mods/Custom-Director/directors/"..name.."/intensity_settings"),
        pacing = mod:dofile("scripts/mods/Custom-Director/directors/"..name.."/pacing_settings"),
        boss = mod:dofile("scripts/mods/Custom-Director/directors/"..name.."/boss_settings"),
        specials = mod:dofile("scripts/mods/Custom-Director/directors/"..name.."/special_settings"),
        roaming = mod:dofile("scripts/mods/Custom-Director/directors/"..name.."/roaming_settings"),
        pack_spawning = mod:dofile("scripts/mods/Custom-Director/directors/"..name.."/packspawn_settings"),
        horde = mod:dofile("scripts/mods/Custom-Director/directors/"..name.."/horde_settings"),
        factions = {}   
    }
end

return DirectorUtils