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
export PATH="$HOME/.local/bin/logic:$PATH"
export PATH="$HOME/.local/ideaIU/bin:$PATH"
export PATH="$HOME/.local/bin/ripgrep/target/release:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/STMicroelectronics/STM32Cube/STM32CubeProgrammer/bin:$PATH"
export PATH="$HOME/workspace/toolchain/gcc-linaro-5.2-2015.11-2-x86_64_aarch64-linux-gnu/bin:$PATH"
export PATH="$HOME/workspace/util-scripts:$PATH"
export PATH="$HOME/kitty/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
if [ -f "$NVM_DIR/nvm.sh" ]
    bash "$NVM_DIR/nvm.sh"
end

# GO PATH
export PATH="$HOME/go/bin:$PATH"
# export LD_LIBRARY_PATH="/home/linuxbrew/.linuxbrew/lib/"

function yocto-bitbake
    bitbake $argv[1]
    scp -v build/tmp/deploy/ipk/armv7ahf-neon/$argv[1]_* \
    mathieu.chan@192.168.6.174:$argv[2]
end

function copy_to_qbox
    scp -r $argv[1] mathieu.chan@192.168.6.174:/home/mathieu.chan
end

# start ssh-agent for fish
fish_ssh_agent
