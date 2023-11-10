# i3 config file (v4)
#
# Please see https://i3wm.org/docs/userguide.html for a complete reference!

# Michael McMahon
# This is a config file for i3 which should go in this location: ~/.config/i3/config
# Based on a US keyboard configuration.

# Features:
# - Screenshots
# - Lock
# - Named workspaces
# - Programs that I commonly use are assigned to specific workspaces.

# Reload this config after saving.
# $mod+SHIFT+r.

# Screenshot active window with Print Screen key.
bindsym Print exec --no-startup-id maim --window $(xdotool getactivewindow) "/home/$USER/Pictures/screenshots/$(date +%Y-%m-%d-%H-%M-%S)".png
# Modified from https://gist.github.com/dianjuar/ee774561a8bc02b077989bc17424a19f

# Move container (window) to next output (monitor).
bindsym $mod+Ctrl+greater move workspace to output next
# From emilBeBri at https://unix.stackexchange.com/a/741220/553861

# From https://gist.github.com/rometsch/6b35524bcc123deb7cd30b293f2088d8
# Keybinding to lock screen (CTRL+ALT+l)
bindsym Control+Mod1+l exec "i3lock -c 000000"
# Auto lock the screen
#exec "xautolock -detectsleep -time 3 -locker \"i3lock -c 000000\""
# Prereq
#sudo apt install i3lock xautolock

set $mod Mod4

# Font for window titles. Will also be used by the bar unless a different font
# is used in the bar {} block below.
font pango:monospace 8

# This font is widely installed, provides lots of unicode glyphs, right-to-left
# text rendering and scalability on retina/hidpi displays (thanks to pango).
#font pango:DejaVu Sans Mono 8

# Start XDG autostart .desktop files using dex. See also
# https://wiki.archlinux.org/index.php/XDG_Autostart
exec --no-startup-id dex --autostart --environment i3

# The combination of xss-lock, nm-applet and pactl is a popular choice, so
# they are included here as an example. Modify as you see fit.

# xss-lock grabs a logind suspend inhibit lock and will use i3lock to lock the
# screen before suspend. Use loginctl lock-session to lock your screen.
exec --no-startup-id xss-lock --transfer-sleep-lock -- i3lock --nofork

# NetworkManager is the most popular way to manage wireless networks on Linux,
# and nm-applet is a desktop environment-independent system tray GUI for it.
exec --no-startup-id nm-applet

# Use pactl to adjust volume in PulseAudio.
set $refresh_i3status killall -SIGUSR1 i3status
bindsym XF86AudioRaiseVolume exec --no-startup-id pactl set-sink-volume @DEFAULT_SINK@ +10% && $refresh_i3status
bindsym XF86AudioLowerVolume exec --no-startup-id pactl set-sink-volume @DEFAULT_SINK@ -10% && $refresh_i3status
bindsym XF86AudioMute exec --no-startup-id pactl set-sink-mute @DEFAULT_SINK@ toggle && $refresh_i3status
bindsym XF86AudioMicMute exec --no-startup-id pactl set-source-mute @DEFAULT_SOURCE@ toggle && $refresh_i3status

# Use Mouse+$mod to drag floating windows to their wanted position
floating_modifier $mod

# start a terminal
bindsym $mod+Return exec i3-sensible-terminal

# kill focused window
bindsym $mod+Shift+q kill

# start dmenu (a program launcher)
bindsym $mod+d exec --no-startup-id dmenu_run
# A more modern dmenu replacement is rofi:
# bindcode $mod+40 exec "rofi -modi drun,run -show drun"
# There also is i3-dmenu-desktop which only displays applications shipping a
# .desktop file. It is a wrapper around dmenu, so you need that installed.
# bindcode $mod+40 exec --no-startup-id i3-dmenu-desktop

# change focus
bindsym $mod+j focus left
bindsym $mod+k focus down
bindsym $mod+l focus up
bindsym $mod+semicolon focus right

# alternatively, you can use the cursor keys:
bindsym $mod+Left focus left
bindsym $mod+Down focus down
bindsym $mod+Up focus up
bindsym $mod+Right focus right

# move focused window
bindsym $mod+Shift+j move left
bindsym $mod+Shift+k move down
bindsym $mod+Shift+l move up
bindsym $mod+Shift+semicolon move right

# alternatively, you can use the cursor keys:
bindsym $mod+Shift+Left move left
bindsym $mod+Shift+Down move down
bindsym $mod+Shift+Up move up
bindsym $mod+Shift+Right move right

# split in horizontal orientation
bindsym $mod+h split h

# split in vertical orientation
bindsym $mod+v split v

# enter fullscreen mode for the focused container
bindsym $mod+f fullscreen toggle

# change container layout (stacked, tabbed, toggle split)
bindsym $mod+s layout stacking
bindsym $mod+w layout tabbed
bindsym $mod+e layout toggle split

# toggle tiling / floating
bindsym $mod+Shift+space floating toggle

# change focus between tiling / floating windows
bindsym $mod+space focus mode_toggle

# focus the parent container
bindsym $mod+a focus parent

# focus the child container
#bindsym $mod+d focus child

# https://thevaluable.dev/i3-config-mouseless/
#set $terms "1: terms"
#set $web "2: web"
#set $mail "3: mails"
#set $file_manager "4: files"
#set $mail "5: pass"
#set $documents "6: documents"
#set $mindmap "7: mindmap"

# Define names for default workspaces for which we configure key bindings later on.
# We use variables to avoid repeating the names in multiple places.
set $ws1 "1: terms"
set $ws2 "2: web"
set $ws3 "3: mail"
set $ws4 "4: pass"
set $ws5 "5: files"
set $ws6 "6: docs"
set $ws7 "7: graphics"
set $ws8 "8: SIP"
set $ws9 "9: Mumble"
set $ws10 "10"

# switch to workspace
bindsym $mod+1 workspace number $ws1
bindsym $mod+2 workspace number $ws2
bindsym $mod+3 workspace number $ws3
bindsym $mod+4 workspace number $ws4
bindsym $mod+5 workspace number $ws5
bindsym $mod+6 workspace number $ws6
bindsym $mod+7 workspace number $ws7
bindsym $mod+8 workspace number $ws8
bindsym $mod+9 workspace number $ws9
bindsym $mod+0 workspace number $ws10

# move focused container to workspace
bindsym $mod+Shift+1 move container to workspace number $ws1
bindsym $mod+Shift+2 move container to workspace number $ws2
bindsym $mod+Shift+3 move container to workspace number $ws3
bindsym $mod+Shift+4 move container to workspace number $ws4
bindsym $mod+Shift+5 move container to workspace number $ws5
bindsym $mod+Shift+6 move container to workspace number $ws6
bindsym $mod+Shift+7 move container to workspace number $ws7
bindsym $mod+Shift+8 move container to workspace number $ws8
bindsym $mod+Shift+9 move container to workspace number $ws9
bindsym $mod+Shift+0 move container to workspace number $ws10

# Assigning programs to containers.
# To find program info, run this command and click on the window.
# xprop | grep WM_CLASS
# Output looks like this.
# WM_CLASS(STRING) = "mate-terminal", "Mate-terminal"
# which would result in a line that looks like this:
# assign [class="Mate-terminal" instance="mate-terminal"] → $ws1
# This command makes the line for you. Run the command, click on the window,
# paste the line in here, change the ws number.
# xprop | grep WM_CLASS | awk -F'"' '{print "assign [class=\"" $4 "\" instance=\"" $2 "\"] → $ws6"}'

assign [class="Mate-terminal" instance="mate-terminal"] → $ws1
assign [class="abrowser" instance="Navigator"] → $ws2
assign [class="icedove" instance="Mail"] → $ws3
assign [class="KeePassXC" instance="keepassxc"] → $ws4
assign [class="Caja" instance="caja"] → $ws5
assign [class="Filezilla" instance="filezilla"] → $ws5
assign [class="Meld" instance="org.gnome.meld"] → $ws6
assign [class="Pluma" instance="pluma"] → $ws6
assign [class="Virt-manager" instance="virt-manager"] → $ws6
assign [class="libreoffice-writer" instance="libreoffice"] → $ws6
assign [class="Gimp" instance="gimp"] → $ws7
assign [class="Inkscape" instance="org.inkscape.Inkscape"] → $ws7
assign [class="Ld-linux-x86-64.so.2" instance="org.inkscape.Inkscape"] → $ws7
assign [class="krita" instance="krita"] → $ws7
assign [class="linphone" instance="linphone"] → $ws8
assign [class="Mumble" instance="mumble"] → $ws9

# reload the configuration file
bindsym $mod+Shift+c reload
# restart i3 inplace (preserves your layout/session, can be used to upgrade i3)
bindsym $mod+Shift+r restart
# exit i3 (logs you out of your X session)
bindsym $mod+Shift+e exec "i3-nagbar -t warning -m 'You pressed the exit shortcut. Do you really want to exit i3? This will end your X session.' -B 'Yes, exit i3' 'i3-msg exit'"

# resize window (you can also use the mouse for that)
mode "resize" {
        # These bindings trigger as soon as you enter the resize mode

        # Pressing left will shrink the window’s width.
        # Pressing right will grow the window’s width.
        # Pressing up will shrink the window’s height.
        # Pressing down will grow the window’s height.
        bindsym j resize shrink width 10 px or 10 ppt
        bindsym k resize grow height 10 px or 10 ppt
        bindsym l resize shrink height 10 px or 10 ppt
        bindsym semicolon resize grow width 10 px or 10 ppt

        # same bindings, but for the arrow keys
        bindsym Left resize shrink width 10 px or 10 ppt
        bindsym Down resize grow height 10 px or 10 ppt
        bindsym Up resize shrink height 10 px or 10 ppt
        bindsym Right resize grow width 10 px or 10 ppt

        # back to normal: Enter or Escape or $mod+r
        bindsym Return mode "default"
        bindsym Escape mode "default"
        bindsym $mod+r mode "default"
}

bindsym $mod+r mode "resize"

# Start i3bar to display a workspace bar (plus the system information i3status
# finds out, if available)
bar {
        status_command i3status
}
