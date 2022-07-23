from libqtile import widget


###########################
### NO CONFIG NECESSARY ###
###########################

current_layout = widget.CurrentLayout()
group_box = widget.GroupBox()
prompt = widget.Prompt()
window_name = widget.WindowName()
sys_tray = widget.Systray()

###########################
### SINGLE LINE CONFIG  ###
###########################

clock = widget.Clock(format="%d-%m-%y %a %H:%M")

###########################
### LONG CONFIG         ###
###########################

# NOTE: Battery
battery = widget.Battery(
    format="{char} {percent:2.0%}",
    show_short_text=False,
    charge_char="",
    discharge_char="",
    empty_char="",
    full_char="",
    low_foreground="#f7768e",
    low_percentage=0.4,
)

# NOTE: no idea what this does
chord = widget.Chord(
    chords_colors={
        "launch": ("#ff0000", "#ffffff"),
    },
    name_transform=lambda name: name.upper(),
)


# NOTE: Cpu info
cpu = widget.CPU(
    # format=" {load_percent}%",
    format="{load_percent}%",
    font="JetBrainsMono Nerd Font Mono",
)
engine_symbol = widget.TextBox(
    text="",
    fontsize=25,
    padding=9,
)


# NOTE: Desktops info
group_box = widget.GroupBox(
    hide_unused=True,
    highlight_method="line",
)

# NOTE: icons to launch apps
launchbar_firefox = widget.LaunchBar(
    progs=[("firefox", "firefox", "launch firefox")],
    padding=3,
)

launchbar_discord = widget.LaunchBar(
    progs=[("discord", "discord", "launch discord")],
    padding=3,
)

launchbar_doom_emacs = widget.LaunchBar(
    progs=[("doom emacs", "emacsclient -c -a 'vim'", "launch emacs")],
    default_icon="/home/franbvc/.config/qtile/icons/cacodemon-gnarly.png",
    padding=3,
)

# NOTE: Exit xorg
quick_exit = widget.QuickExit(
    font="JetBrains Mono Nerd Font Mono",
    fontsize=20,
    padding=5,
    default_text="",
    countdown_format="{}",
)
