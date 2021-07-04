# Ansible
export ANSIBLE_CALLBACK_WHITELIST="timer, profile_tasks"
export ANSIBLE_DISPLAY_ARGS_TO_STDOUT="true"
export ANSIBLE_FORCE_COLOR="true"
export ANSIBLE_NOCOWS="true"
export ANSIBLE_RETRY_FILES_ENABLED="false"
export ANSIBLE_STDOUT_CALLBACK="yaml"

# tmuxifier
export PATH="$HOME/.tmuxifier/bin:$PATH"
export TMUXIFIER_LAYOUT_PATH="$HOME/.tmux-layouts"
export EDITOR="vim"

# oh-my-zsh debian plugin
export apt_pref="apt"

# bundle
export GEM_HOME="$HOME/.bundle"
export BUNDLE_SILENCE_ROOT_WARNING=1
export BUNDLE_APP_CONFIG="$GEM_HOME"
export PATH="$GEM_HOME/bin:$PATH"

# Vagrant Wsl
# export VAGRANT_WSL_ENABLE_WINDOWS_ACCESS="1"

# Wsl Fix
# umask 022

# Pandemonium environment.
export GIT_PATH="~/git"
