# Set window root path. Default is `$session_root`.
# Must be called before `new_window`.
window_root "$HOME/git/Pandemonium1986/vagrant-corel"

# Create new window. If no argument is given, window name will be based on
# layout file name.
new_window "vagrant-corel"

# Split window into panes.
split_v 15
select_pane 0
split_h 50

# Run commands.
send_keys "vagrant up" 2
send_keys "sleep 15 && vagrant ssh corel-awx-cts" 0
send_keys "sleep 45 && vagrant ssh corel-obs-cts" 1

# Paste text

# Set active pane.
select_pane 2
