# Set window root path. Default is `$session_root`.
# Must be called before `new_window`.
window_root "$HOME/git/Pandemonium1986/pandama-pic"

# Create new window. If no argument is given, window name will be based on
# layout file name.
new_window "pandama-pic"

# Split window into panes.

# Run commands.
run_cmd "clear" 0

# Set active pane.
select_pane 0
