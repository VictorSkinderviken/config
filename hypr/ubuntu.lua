------------------
---- MONITORS ----
------------------

hl.monitor({ output = "eDP-1",    mode = "1920x1200@60", position = "0x0",    scale = "1" })
hl.monitor({ output = "DP-1",     mode = "3440x1440@60", position = "1920x0", scale = "1" })
hl.monitor({ output = "HDMI-A-1", mode = "2560x1440@60", position = "5360x0", scale = "1" })

-----------------------------
---- WORKSPACES PER MONITOR ----
-----------------------------

hl.workspace_rule({ workspace = "1", monitor = "eDP-1",    default = true, persistent = true })
hl.workspace_rule({ workspace = "2", monitor = "eDP-1",    persistent = true })
hl.workspace_rule({ workspace = "3", monitor = "eDP-1",    persistent = true })
hl.workspace_rule({ workspace = "4", monitor = "DP-1",     default = true, persistent = true })
hl.workspace_rule({ workspace = "5", monitor = "DP-1",     persistent = true })
hl.workspace_rule({ workspace = "6", monitor = "DP-1",     persistent = true })
hl.workspace_rule({ workspace = "7", monitor = "HDMI-A-1", default = true, persistent = true })
hl.workspace_rule({ workspace = "8", monitor = "HDMI-A-1", persistent = true })
hl.workspace_rule({ workspace = "9", monitor = "HDMI-A-1", persistent = true })

-----------------------------
---- ALT+TAB PER MONITOR ----
-----------------------------

hl.bind("ALT + Tab",         hl.dsp.focus({ workspace = "m-1" }))
hl.bind("ALT + SHIFT + Tab", hl.dsp.focus({ workspace = "m+1" }))

------------------------
---- SCREENSHOT (grim + slurp) ----
------------------------

hl.bind("SUPER + S", hl.dsp.exec_cmd("grim -g \"$(slurp)\" - | wl-copy"))
