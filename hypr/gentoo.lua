------------------
---- MONITORS ----
------------------

hl.monitor({
    output   = "DP-3",
    mode     = "2560x1440@240",
    position = "0x0",
    scale    = "1",
})

hl.monitor({
    output   = "DP-1",
    mode     = "2560x1440@240",
    position = "2560x0",
    scale    = "1",
})

-----------------------------
---- WORKSPACES PER MONITOR ----
-----------------------------

hl.workspace_rule({ workspace = "1", monitor = "DP-3", default = true, persistent = true })
hl.workspace_rule({ workspace = "2", monitor = "DP-3", persistent = true })
hl.workspace_rule({ workspace = "3", monitor = "DP-3", persistent = true })
hl.workspace_rule({ workspace = "4", monitor = "DP-1", default = true, persistent = true })
hl.workspace_rule({ workspace = "5", monitor = "DP-1", persistent = true })
hl.workspace_rule({ workspace = "6", monitor = "DP-1", persistent = true })

-----------------------------
---- ALT+TAB PER MONITOR ----
-----------------------------

hl.bind("ALT + Tab",         hl.dsp.focus({ workspace = "m-1" }))
hl.bind("ALT + SHIFT + Tab", hl.dsp.focus({ workspace = "m+1" }))

------------------------
---- SCREENSHOT (hyprshot) ----
------------------------

hl.env("HYPRSHOT_DIR", "/home/victor/Pictures/Screenshots")
hl.bind("SUPER + SHIFT + S", hl.dsp.exec_cmd("hyprshot -m region --clipboard-only"))
