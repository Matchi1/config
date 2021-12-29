#!/home/linuxbrew/.linuxbrew/bin/fish

function runscript
    echo "I am executing the" $argv[1] "script"
    bash -c '~/scripts/"$@"' _ $argv
end
