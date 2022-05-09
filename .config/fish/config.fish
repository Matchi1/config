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

export QRAD="QRAD-58d8-00d7-a44a-000000000000"
export QRAD_USER="mathieu_chan"
export QRAD_PW="vUD79N9hyHU3Yz7AU"

function copy_to_qbox
    scp -v $argv[1] mathieu.chan@192.168.6.182:/home/mathieu.chan 
end

function qrpc_send
    echo "CREDENTIALS"
    echo "QRAD_USER=  $QRAD_USER"
    echo "QRAD_PW=    $QRAD_PW"
    echo "QRAD=       $QRAD"
    echo "JSON FILE=  $argv[1]"
    python3 send_rpc.py $QRAD_USER $QRAD_PW $argv[1] $QRAD 5000
end
