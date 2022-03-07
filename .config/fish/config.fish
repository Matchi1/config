if status is-interactive
    # Commands to run in interactive sessions can go here
end

if [ -f ~/.config/fish/fish_aliases ]
    . ~/.config/fish/fish_aliases
end

# Set default editor
export VISUAL=nvim
export EDITOR="$VISUAL"
export PATH="$HOME/.local/bin:$PATH"
