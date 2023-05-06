local mod = get_mod("Custom-Director")

mod:dofile("scripts/mods/Custom-Director/directors/directors_init")

-- Your mod code goes here.
-- https://vmf-docs.verminti.de

-- mod.density = 1

-- mod:command("add_monk_pack", "", function()
-- 	BreedPackUtils.add_breedpack("monks_only", "skaven_plague_monk")
-- end)

-- mod:command("add_shield_wall_pack", "", function()
-- 	BreedPackUtils.add_breedpack("shield_wall", "beastmen_ungor_archer", "skaven_clan_rat_with_shield")
-- end)


mod:command("set_director", "set director for given level", function(level_name, director)
	mod:set(level_name, director)
end)

--sets all levels' Conflict Director to helloWorld for testing purposes
for level_key,data in pairs(LevelSettings) do
    mod:set(data.level_name, "helloWorld")
end
mod:hook(LevelAnalysis, "_setup_level_data", function(func, self, level_name, level_seed)

    
    local result = func(self, level_name, level_seed)
    -- mod:echo(self.spawn_zone_data.roaming_set)
    for k,v in pairs(self.spawn_zone_data.zones) do
        -- local directors = {"tester", "skaven"}

        --populate unpopulated ambient zones
        -- if not v.roaming_set then
        --     self.spawn_zone_data.zones[k].roaming_set = directors[math.random(1, #directors)]
        -- end

        if v.roaming_set and mod:is_enabled() then
            mod:echo(mod:get(level_name))
            self.spawn_zone_data.zones[k].roaming_set = mod:get(level_name) or "default"
        end

        --populate all zones with override director
        -- self.spawn_zone_data.zones[k].roaming_set = directors[math.random(1, #directors)]

    end
    return result 
end)
