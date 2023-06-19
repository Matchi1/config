#!/home/linuxbrew/.linuxbrew/bin/fish

function help_cmd
    echo 'dfu-compile              : Compile Qmate USB firmware'
    echo 'gdb [elf_path]           : Execute debugging on the specified elf path file'
    echo 'gshow [integer]          : Execute "git show" from HEAD to the specified HEAD'
    echo 'gf                       : Execute "git fetch"'
    echo 'gs                       : Execute "git status"'
    echo 'night-mode [off]         : Enter night mode'
    echo 'runscript [name_script]  : Run script'
    echo 'qrpc_send [json]         : Send request to qrpc with the given json file'
end

function export_list
    echo '$QRAD       : Qrad id'
    echo '$QRAD_USER  : Username for Qrad'
    echo '$QRAD_PW    : Password for Qrad'
    echo '$QRAD       : Compile Qmate USB firmware'
    echo '$ELF_PATH   : elf file path for gdb debugger'
end
