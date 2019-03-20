# Set window root path. Default is `$session_root`.
# Must be called before `new_window`.
window_root "~/"

# Create new window. If no argument is given, window name will be based on
# layout file name.
new_window "gitlab"

# Split window into panes.
split_v 50
split_h 50
run_cmd "gotogtlmma" 0
run_cmd "clear" 0
run_cmd "gotogtlrct" 1
run_cmd "clear" 1
run_cmd "gotogtlprd" 2
run_cmd "clear" 2

# Run commands.
# run_cmd "top"     # runs in active pane
# run_cmd "date" 1  # runs in pane 1

# Paste text
# send_keys "top"    # paste into active pane
# send_keys "date" 1 # paste into pane 1

# Set active pane.
select_pane 0
