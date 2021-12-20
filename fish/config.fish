set -g -x fish_greeting ''

# Aliases
if test -f ~/.config/fish/fish_aliases
    . ~/.config/fish/fish_aliases
end

set __fish_sdkman_init "$HOME/.sdkman/bin/sdkman-init.sh"
set __fish_sdkman_noexport_init "$HOME/.config/fisher/github.com/reitzig/sdkman-for-fish/sdkman-noexport-init.sh"

#>>> conda initialize >>>
# # !! Contents within this block are managed by 'conda init' !!
eval /home/chan/anaconda3/bin/conda "shell.fish" "hook" $argv | source
#   # <<< conda initialize <<<

export EDITOR='nvim'
export VISUAL='nvim'
export JAVA_HOME='/home/chan/.sdkman/candidates/java/17-open'

# Guard: SDKMAN! needs to be installed
if not test -f "$__fish_sdkman_init"
    exit 0
end

export SDKMAN_DIR="$HOME/.sdkman"
bash -c 'source "$HOME/.sdkman/bin/sdkman-init.sh"'
