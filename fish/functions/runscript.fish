#!/home/linuxbrew/.linuxbrew/bin/fish

export SCRIPT_PATH='~/scripts/'

function runscript
    echo "I am executing the" $argv[1] "script"
    bash -c '~/scripts/"$@"' _ $argv
end
