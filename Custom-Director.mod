return {
	run = function()
		fassert(rawget(_G, "new_mod"), "`Custom-Director` mod must be lower than Vermintide Mod Framework in your launcher's load order.")

		new_mod("Custom-Director", {
			mod_script       = "scripts/mods/Custom-Director/Custom-Director",
			mod_data         = "scripts/mods/Custom-Director/Custom-Director_data",
			mod_localization = "scripts/mods/Custom-Director/Custom-Director_localization",
		})
	end,
	packages = {
		"resource_packages/Custom-Director/Custom-Director",
	},
}
