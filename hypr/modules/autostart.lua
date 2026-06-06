-------------------
---- AUTOSTART ----
-------------------

-- See https://wiki.hypr.land/Configuring/Basics/Autostart/

-- Autostart necessary processes (like notifications daemons, status bars, etc.)
-- Or execute your favorite apps at launch like this:
--
hl.on("hyprland.start", function()
	hl.exec_cmd("waybar & hyprpaper")
	hl.exec_cmd("hyprshade on vibrance")
	hl.exec_cmd("hyprctl setcursor Bibata-Modern-Classic-Gruvbox 18")
	hl.exec_cmd("nvibrant 512 512 1023")
	hl.exec_cmd("systemctl --user start hyprpolkitagent")
end)
