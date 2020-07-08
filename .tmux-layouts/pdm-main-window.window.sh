# Set window root path. Default is `$session_root`.
# Must be called before `new_window`.
window_root "$HOME"

# Create new window. If no argument is given, window name will be based on
# layout file name.
new_window "main"

# Split window into panes.
split_v 35
split_h 17
# split_h 32

# Run commands.
#run_cmd "watch -tn 3600 'fortune -a /home/$USER/.oh-my-zsh/plugins/chucknorris/fortunes | cowthink'" 1
run_cmd "watch -tn 3600 'df -h --output=pcent,size,avail,used,target | sort -bfg'" 2
run_cmd "htop" 1

# Paste text
# send_keys "top"    # paste into active pane
# send_keys "date" 1 # paste into pane 1

# Set active pane.
select_pane 0
