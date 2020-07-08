# Set window root path. Default is `$session_root`.
# Must be called before `new_window`.
window_root "$HOME/git/Pandemonium1986/vagrant-midgar"

# Create new window. If no argument is given, window name will be based on
# layout file name.
new_window "vagrant-midgar"

# Split window into panes.
split_v 25
select_pane 0
split_h 50

# Run commands.
run_cmd "git lola" 1

# Paste text
send_keys "vagrant ssh midgar-mnt" 0
send_keys "vagrant up" 2


# Set active pane.
select_pane 0
