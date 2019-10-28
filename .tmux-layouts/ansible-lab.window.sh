# Set window root path. Default is `$session_root`.
# Must be called before `new_window`.
window_root "~/git/Pandemonium1986/slides-show/ansible"

# Create new window. If no argument is given, window name will be based on
# layout file name.
new_window "ansible-lab"

# Split window into panes.
split_v 50
split_h 50
select_pane 0
split_h 50

run_cmd "vagrant ssh ansible" 0
run_cmd "clear" 0
run_cmd "vagrant ssh haproxy" 1
run_cmd "clear" 1
run_cmd "vagrant ssh blue" 2
run_cmd "clear" 2
run_cmd "vagrant ssh green" 3
run_cmd "clear" 3


# Set active pane.
select_pane 0
