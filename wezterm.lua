local wezterm = require("wezterm")

function scheme_for_appearance(appearance)
	if appearance:find("Dark") then
		return "Catppuccin Mocha"
	else
		return "Catppuccin Latte"
	end
end

return {
	default_prog = { "tmux", "new-session", "-A", "-s", "main" },
	font = wezterm.font("JetBrains Mono"),
	font_size = 16.0,
	color_scheme = scheme_for_appearance(wezterm.gui.get_appearance()),
	initial_cols = 120,
	initial_rows = 30,
	hide_tab_bar_if_only_one_tab = true,
	tab_bar_at_bottom = true,
}
