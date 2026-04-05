set -l color00 '#0A1429'
set -l color01 '#e95c4b'
set -l color02 '#6488EA'
set -l color03 '#d5edeb'
set -l color04 '#f7c3c6'
set -l color05 '#85cec4'
set -l color06 '#fff6d2'
set -l color07 '#e1e9f5'
set -l color08 '#51688E'
set -l color09 '#ed7b6d'
set -l color0A '#819fee'
set -l color0B '#d7ebe9'
set -l color0C '#f2c8cb'
set -l color0D '#8cc7bf'
set -l color0E '#fef4d7'
set -l color0F '#c8cbd0'

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"" --color=bg+:$color00,bg:$color00,spinner:$color0E,hl:$color0D"" --color=fg:$color07,header:$color0D,info:$color0A,pointer:$color0E"" --color=marker:$color0E,fg+:$color06,prompt:$color0A,hl+:$color0D"
